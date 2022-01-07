
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_lock {int lock; int flags; } ;


 int EINTR ;
 int ERESTART ;
 int ERESTARTSYS ;
 int PCATCH ;
 int TTM_WRITE_LOCK_PENDING ;
 int __ttm_write_lock (struct ttm_lock*) ;
 int msleep (struct ttm_lock*,int *,int,char const*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct ttm_lock*) ;

int
ttm_write_lock(struct ttm_lock *lock, bool interruptible)
{
 const char *wmsg;
 int flags, ret;

 ret = 0;
 if (interruptible) {
  flags = PCATCH;
  wmsg = "ttmwi";
 } else {
  flags = 0;
  wmsg = "ttmw";
 }
 mtx_lock(&lock->lock);

 while (!__ttm_write_lock(lock)) {
  ret = -msleep(lock, &lock->lock, flags, wmsg, 0);
  if (ret == -EINTR || ret == -ERESTART)
   ret = -ERESTARTSYS;
  if (interruptible && ret != 0) {
   lock->flags &= ~TTM_WRITE_LOCK_PENDING;
   wakeup(lock);
   break;
  }
 }
 mtx_unlock(&lock->lock);

 return (ret);
}
