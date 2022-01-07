
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_lock {int lock; scalar_t__ rw; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct ttm_lock*) ;

void ttm_write_unlock(struct ttm_lock *lock)
{
 mtx_lock(&lock->lock);
 lock->rw = 0;
 wakeup(lock);
 mtx_unlock(&lock->lock);
}
