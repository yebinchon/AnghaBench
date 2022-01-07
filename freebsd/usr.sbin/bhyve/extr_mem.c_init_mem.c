
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RB_INIT (int *) ;
 int mmio_rb_fallback ;
 int mmio_rb_root ;
 int mmio_rwlock ;
 int pthread_rwlock_init (int *,int *) ;

void
init_mem(void)
{

 RB_INIT(&mmio_rb_root);
 RB_INIT(&mmio_rb_fallback);
 pthread_rwlock_init(&mmio_rwlock, ((void*)0));
}
