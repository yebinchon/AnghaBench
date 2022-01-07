
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_spinlock {int mutex; } ;


 int mtx_destroy (int *) ;
 scalar_t__ mtx_initialized (int *) ;

void
i40e_destroy_spinlock(struct i40e_spinlock *lock)
{
 if (mtx_initialized(&lock->mutex))
  mtx_destroy(&lock->mutex);
}
