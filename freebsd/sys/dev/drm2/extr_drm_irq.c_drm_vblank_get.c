
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {int* vblank_enabled; int vbl_lock; int * vblank_refcount; int vblank_time_lock; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* enable_vblank ) (struct drm_device*,int) ;} ;


 int DRM_DEBUG (char*,int,int) ;
 int EINVAL ;
 int atomic_add_return (int,int *) ;
 int atomic_dec (int *) ;
 int drm_update_vblank_count (struct drm_device*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct drm_device*,int) ;

int drm_vblank_get(struct drm_device *dev, int crtc)
{
 int ret = 0;

 mtx_lock(&dev->vbl_lock);

 if (atomic_add_return(1, &dev->vblank_refcount[crtc]) == 1) {
  mtx_lock(&dev->vblank_time_lock);
  if (!dev->vblank_enabled[crtc]) {






   ret = dev->driver->enable_vblank(dev, crtc);
   DRM_DEBUG("enabling vblank on crtc %d, ret: %d\n",
      crtc, ret);
   if (ret)
    atomic_dec(&dev->vblank_refcount[crtc]);
   else {
    dev->vblank_enabled[crtc] = 1;
    drm_update_vblank_count(dev, crtc);
   }
  }
  mtx_unlock(&dev->vblank_time_lock);
 } else {
  if (!dev->vblank_enabled[crtc]) {
   atomic_dec(&dev->vblank_refcount[crtc]);
   ret = -EINVAL;
  }
 }
 mtx_unlock(&dev->vbl_lock);

 return ret;
}
