
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_object_file {int dummy; } ;
struct ttm_lock {struct ttm_object_file* vt_holder; int base; int flags; int lock; } ;


 int EINTR ;
 int ERESTART ;
 int ERESTARTSYS ;
 int PCATCH ;
 int TTM_VT_LOCK_PENDING ;
 int __ttm_vt_lock (struct ttm_lock*) ;
 int __ttm_vt_unlock (struct ttm_lock*) ;
 int msleep (struct ttm_lock*,int *,int,char const*,int ) ;
 int mtx_lock (int *) ;
 int ttm_base_object_init (struct ttm_object_file*,int *,int,int ,int *,int *) ;
 int ttm_lock_type ;
 int ttm_vt_lock_remove ;
 int wakeup (struct ttm_lock*) ;

int ttm_vt_lock(struct ttm_lock *lock,
  bool interruptible,
  struct ttm_object_file *tfile)
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
 while (!__ttm_vt_lock(lock)) {
  ret = -msleep(lock, &lock->lock, flags, wmsg, 0);
  if (ret == -EINTR || ret == -ERESTART)
   ret = -ERESTARTSYS;
  if (interruptible && ret != 0) {
   lock->flags &= ~TTM_VT_LOCK_PENDING;
   wakeup(lock);
   break;
  }
 }







 ret = ttm_base_object_init(tfile, &lock->base, 0,
       ttm_lock_type, &ttm_vt_lock_remove, ((void*)0));
 if (ret)
  (void)__ttm_vt_unlock(lock);
 else
  lock->vt_holder = tfile;

 return (ret);
}
