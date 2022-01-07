
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int* vblank_inmodeset; int vblank_disable_allowed; int vbl_lock; int num_crtcs; } ;


 int drm_vblank_put (struct drm_device*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void drm_vblank_post_modeset(struct drm_device *dev, int crtc)
{

 if (!dev->num_crtcs)
  return;

 if (dev->vblank_inmodeset[crtc]) {
  mtx_lock(&dev->vbl_lock);
  dev->vblank_disable_allowed = 1;
  mtx_unlock(&dev->vbl_lock);

  if (dev->vblank_inmodeset[crtc] & 0x2)
   drm_vblank_put(dev, crtc);

  dev->vblank_inmodeset[crtc] = 0;
 }
}
