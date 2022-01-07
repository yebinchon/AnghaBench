
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int foo1 ;
 int foo2 ;
 int pthread_create (int *,int ,int ,int ) ;
 int pthread_join (int ,int ) ;

int
main(int argc, char** argv)
{
 pthread_t t1, t2;

 pthread_create(&t1, 0, foo1, 0);
 pthread_create(&t2, 0, foo2, 0);
 pthread_join(t1, 0);
 pthread_join(t2, 0);

 return (0);
}
