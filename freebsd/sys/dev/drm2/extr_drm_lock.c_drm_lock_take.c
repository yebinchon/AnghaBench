
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_lock_data {int user_waiters; int kernel_waiters; int spinlock; TYPE_1__* hw_lock; } ;
struct TYPE_2__ {unsigned int lock; } ;


 int DRM_ERROR (char*,unsigned int) ;
 unsigned int DRM_KERNEL_CONTEXT ;
 unsigned int _DRM_LOCKING_CONTEXT (unsigned int) ;
 unsigned int _DRM_LOCK_CONT ;
 unsigned int _DRM_LOCK_HELD ;
 unsigned int cmpxchg (unsigned int volatile*,unsigned int,unsigned int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static
int drm_lock_take(struct drm_lock_data *lock_data,
    unsigned int context)
{
 unsigned int old, new, prev;
 volatile unsigned int *lock = &lock_data->hw_lock->lock;

 mtx_lock(&lock_data->spinlock);
 do {
  old = *lock;
  if (old & _DRM_LOCK_HELD)
   new = old | _DRM_LOCK_CONT;
  else {
   new = context | _DRM_LOCK_HELD |
    ((lock_data->user_waiters + lock_data->kernel_waiters > 1) ?
     _DRM_LOCK_CONT : 0);
  }
  prev = cmpxchg(lock, old, new);
 } while (prev != old);
 mtx_unlock(&lock_data->spinlock);

 if (_DRM_LOCKING_CONTEXT(old) == context) {
  if (old & _DRM_LOCK_HELD) {
   if (context != DRM_KERNEL_CONTEXT) {
    DRM_ERROR("%d holds heavyweight lock\n",
       context);
   }
   return 0;
  }
 }

 if ((_DRM_LOCKING_CONTEXT(new)) == context && (new & _DRM_LOCK_HELD)) {

  return 1;
 }
 return 0;
}
