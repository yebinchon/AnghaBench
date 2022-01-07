
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_master {int lock; } ;
struct drm_lock {scalar_t__ context; } ;
struct drm_file {struct drm_master* master; } ;
struct drm_device {int * counts; } ;


 int DRM_CURRENTPID ;
 int DRM_ERROR (char*,int ,scalar_t__) ;
 scalar_t__ DRM_KERNEL_CONTEXT ;
 int EINVAL ;
 size_t _DRM_STAT_UNLOCKS ;
 int atomic_inc (int *) ;
 scalar_t__ drm_lock_free (int *,scalar_t__) ;
 int unblock_all_signals () ;

int drm_unlock(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 struct drm_lock *lock = data;
 struct drm_master *master = file_priv->master;

 if (lock->context == DRM_KERNEL_CONTEXT) {
  DRM_ERROR("Process %d using kernel context %d\n",
     DRM_CURRENTPID, lock->context);
  return -EINVAL;
 }

 atomic_inc(&dev->counts[_DRM_STAT_UNLOCKS]);

 if (drm_lock_free(&master->lock, lock->context)) {

 }


 unblock_all_signals();

 return 0;
}
