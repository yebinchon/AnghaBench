
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_spinlock {int mutex; } ;


 int mtx_lock (int *) ;

void
i40e_acquire_spinlock(struct i40e_spinlock *lock)
{
 mtx_lock(&lock->mutex);
}
