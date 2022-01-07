
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_lock {int lock; } ;


 int __ttm_suspend_lock (struct ttm_lock*) ;
 int msleep (struct ttm_lock*,int *,int ,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void ttm_suspend_lock(struct ttm_lock *lock)
{
 mtx_lock(&lock->lock);
 while (!__ttm_suspend_lock(lock))
  msleep(lock, &lock->lock, 0, "ttms", 0);
 mtx_unlock(&lock->lock);
}
