
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int num_crtcs; int vbl_lock; scalar_t__* vblank_enabled; int * vblank_refcount; int vblank_disable_allowed; } ;


 int DRM_DEBUG (char*,int) ;
 scalar_t__ atomic_read (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vblank_disable_and_save (struct drm_device*,int) ;

__attribute__((used)) static void vblank_disable_fn(void *arg)
{
 struct drm_device *dev = (struct drm_device *)arg;
 int i;

 if (!dev->vblank_disable_allowed)
  return;

 for (i = 0; i < dev->num_crtcs; i++) {
  mtx_lock(&dev->vbl_lock);
  if (atomic_read(&dev->vblank_refcount[i]) == 0 &&
      dev->vblank_enabled[i]) {
   DRM_DEBUG("disabling vblank on crtc %d\n", i);
   vblank_disable_and_save(dev, i);
  }
  mtx_unlock(&dev->vbl_lock);
 }
}
