
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_lock {int flags; int lock; } ;


 int EINVAL ;
 int TTM_VT_LOCK ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int wakeup (struct ttm_lock*) ;

__attribute__((used)) static int __ttm_vt_unlock(struct ttm_lock *lock)
{
 int ret = 0;

 mtx_lock(&lock->lock);
 if (unlikely(!(lock->flags & TTM_VT_LOCK)))
  ret = -EINVAL;
 lock->flags &= ~TTM_VT_LOCK;
 wakeup(lock);
 mtx_unlock(&lock->lock);

 return ret;
}
