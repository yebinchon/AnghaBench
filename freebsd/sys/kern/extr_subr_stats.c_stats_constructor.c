
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pthread_rwlock_init (int *,int *) ;
 int tpllistlock ;

__attribute__((used)) static void __attribute__ ((constructor))
stats_constructor(void)
{

 pthread_rwlock_init(&tpllistlock, ((void*)0));
}
