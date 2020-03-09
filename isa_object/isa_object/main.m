//
//  main.m
//  isa_object
//
//  Created by Alan on 3/9/20.
//  Copyright © 2020 zhaixingzhi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XZPerson.h"
#import <objc/runtime.h>



//MARK: - 分析类对象内存存在个数
void xzTestClassNum(){
    Class class1 = [XZPerson class];
    Class class2 = [XZPerson alloc].class;
    Class class3 = object_getClass([XZPerson alloc]);
    Class class4 = [XZPerson alloc].class;
    NSLog(@"\n%p-\n%p-\n%p-\n%p",class1,class2,class3,class4);
}
void xzTestNSObject(){
    // NSObject实例对象
    NSObject *object1 = [NSObject alloc];
    // NSObject类
    Class class = object_getClass(object1);
    // NSObject元类
    Class metaClass = object_getClass(class);
    // NSObject根元类
    Class rootMetaClass = object_getClass(metaClass);
    // NSObject根根元类
    Class rootRootMetaClass = object_getClass(rootMetaClass);
    NSLog(@"\n%p 实例对象\n%p 类\n%p 元类\n%p 根元类\n%p 根根元类",object1,class,metaClass,rootMetaClass,rootRootMetaClass);
}
void xzTypes(){
    NSLog(@"char --> %s",@encode(char));
    NSLog(@"int --> %s",@encode(int));
    NSLog(@"short --> %s",@encode(short));
    NSLog(@"long --> %s",@encode(long));
    NSLog(@"long long --> %s",@encode(long long));
    NSLog(@"unsigned char --> %s",@encode(unsigned char));
    NSLog(@"unsigned int --> %s",@encode(unsigned int));
    NSLog(@"unsigned short --> %s",@encode(unsigned short));
    NSLog(@"unsigned long --> %s",@encode(unsigned long long));
    NSLog(@"float --> %s",@encode(float));
    NSLog(@"bool --> %s",@encode(bool));
    NSLog(@"void --> %s",@encode(void));
    NSLog(@"char * --> %s",@encode(char *));
    NSLog(@"id --> %s",@encode(id));
    NSLog(@"Class --> %s",@encode(Class));
    NSLog(@"SEL --> %s",@encode(SEL));
    int array[] = {1,2,3};
    NSLog(@"int[] --> %s",@encode(typeof(array)));
    typedef struct person{
        char *name;
        int age;
    }Person;
    NSLog(@"struct --> %s",@encode(Person));
    
    typedef union union_type{
        char *name;
        int a;
    }Union;
    NSLog(@"union --> %s",@encode(Union));

    int a = 2;
    int *b = {&a};
    NSLog(@"int[] --> %s",@encode(typeof(b)));
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
    
//        xzTestClassNum();
        xzTestNSObject();
        NSLog(@"hello world");
    }
    return 0;
}
