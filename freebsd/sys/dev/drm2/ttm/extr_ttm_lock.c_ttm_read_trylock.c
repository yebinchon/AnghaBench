
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_lock {int lock; } ;


 int EBUSY ;
 int EINTR ;
 int ERESTART ;
 int ERESTARTSYS ;
 int MPASS (int) ;
 int PCATCH ;
 int __ttm_read_trylock (struct ttm_lock*,int*) ;
 int msleep (struct ttm_lock*,int *,int,char const*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int ttm_read_trylock(struct ttm_lock *lock, bool interruptible)
{
 const char *wmsg;
 int flags, ret;
 bool locked;

 ret = 0;
 if (interruptible) {
  flags = PCATCH;
  wmsg = "ttmrti";
 } else {
  flags = 0;
  wmsg = "ttmrt";
 }
 mtx_lock(&lock->lock);
 while (!__ttm_read_trylock(lock, &locked)) {
  ret = -msleep(lock, &lock->lock, flags, wmsg, 0);
  if (ret == -EINTR || ret == -ERESTART)
   ret = -ERESTARTSYS;
  if (ret != 0)
   break;
 }
 MPASS(!locked || ret == 0);
 mtx_unlock(&lock->lock);

 return (locked) ? 0 : -EBUSY;
}
