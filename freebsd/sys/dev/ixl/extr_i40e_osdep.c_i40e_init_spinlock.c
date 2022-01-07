
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_spinlock {int mutex; } ;


 int MTX_DEF ;
 int MTX_DUPOK ;
 int mtx_init (int *,char*,char*,int) ;

void
i40e_init_spinlock(struct i40e_spinlock *lock)
{
 mtx_init(&lock->mutex, "mutex",
     "ixl spinlock", MTX_DEF | MTX_DUPOK);
}
