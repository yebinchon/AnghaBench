
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_spinlock {int mutex; } ;


 int mtx_unlock (int *) ;

void
i40e_release_spinlock(struct i40e_spinlock *lock)
{
 mtx_unlock(&lock->mutex);
}
