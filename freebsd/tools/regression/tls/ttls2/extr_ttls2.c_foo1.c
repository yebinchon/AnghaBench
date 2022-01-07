
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i ;
 int printf (char*,int ,...) ;
 int pthread_self () ;
 int sleep (int) ;

void *
foo1(void *arg)
{
 printf("thread %p, &i = %p\n", pthread_self(), &i);
 for (i = 0; i < 10; i++) {
  printf("thread %p, i = %d\n", pthread_self(), i);
  sleep(1);
 }
 return (((void*)0));
}
