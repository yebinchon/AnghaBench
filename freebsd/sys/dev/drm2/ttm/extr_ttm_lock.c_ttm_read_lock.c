
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_lock {int lock; } ;


 int EINTR ;
 int ERESTART ;
 int ERESTARTSYS ;
 int PCATCH ;
 int __ttm_read_lock (struct ttm_lock*) ;
 int msleep (struct ttm_lock*,int *,int,char const*,int ) ;
 int mtx_lock (int *) ;

int
ttm_read_lock(struct ttm_lock *lock, bool interruptible)
{
 const char *wmsg;
 int flags, ret;

 ret = 0;
 if (interruptible) {
  flags = PCATCH;
  wmsg = "ttmri";
 } else {
  flags = 0;
  wmsg = "ttmr";
 }
 mtx_lock(&lock->lock);
 while (!__ttm_read_lock(lock)) {
  ret = -msleep(lock, &lock->lock, flags, wmsg, 0);
  if (ret == -EINTR || ret == -ERESTART)
   ret = -ERESTARTSYS;
  if (ret != 0)
   break;
 }
 return (ret);
}
