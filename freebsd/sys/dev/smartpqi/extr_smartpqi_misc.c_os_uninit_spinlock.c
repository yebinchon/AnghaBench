
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;


 int mtx_destroy (struct mtx*) ;

void os_uninit_spinlock(struct mtx *lock)
{
    mtx_destroy(lock);
    return;

}
