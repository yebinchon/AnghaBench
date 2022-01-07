
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_minor {struct drm_device* dev; } ;
struct drm_device {int open_count; int dev; int * counts; } ;
struct cdev {struct drm_minor* si_drv1; } ;
typedef int DRM_STRUCTPROC ;


 int ENODEV ;
 int Giant ;
 size_t _DRM_STAT_OPENS ;
 int atomic_inc (int *) ;
 int device_unbusy (int ) ;
 int drm_global_mutex ;
 int drm_open_helper (struct cdev*,int,int,int *,struct drm_device*) ;
 int drm_setup (struct drm_device*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int drm_open(struct cdev *kdev, int flags, int fmt, DRM_STRUCTPROC *p)
{
 struct drm_device *dev = ((void*)0);
 struct drm_minor *minor;
 int retcode = 0;
 int need_setup = 0;

 minor = kdev->si_drv1;
 if (!minor)
  return ENODEV;

 if (!(dev = minor->dev))
  return ENODEV;

 sx_xlock(&drm_global_mutex);





 if (!dev->open_count++)
  need_setup = 1;

 retcode = drm_open_helper(kdev, flags, fmt, p, dev);
 if (retcode) {
  sx_xunlock(&drm_global_mutex);
  return (-retcode);
 }
 atomic_inc(&dev->counts[_DRM_STAT_OPENS]);
 if (need_setup) {
  retcode = drm_setup(dev);
  if (retcode)
   goto err_undo;
 }
 sx_xunlock(&drm_global_mutex);
 return 0;

err_undo:
 mtx_lock(&Giant);
 device_unbusy(dev->dev);
 mtx_unlock(&Giant);
 dev->open_count--;
 sx_xunlock(&drm_global_mutex);
 return -retcode;
}
