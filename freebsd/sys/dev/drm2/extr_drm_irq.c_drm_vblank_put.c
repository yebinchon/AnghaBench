
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int vblank_disable_callout; int * vblank_refcount; } ;


 int BUG_ON (int) ;
 int DRM_HZ ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int callout_reset (int *,int,int ,struct drm_device*) ;
 int drm_vblank_offdelay ;
 int vblank_disable_fn ;

void drm_vblank_put(struct drm_device *dev, int crtc)
{
 BUG_ON(atomic_read(&dev->vblank_refcount[crtc]) == 0);


 if (atomic_dec_and_test(&dev->vblank_refcount[crtc]) &&
     (drm_vblank_offdelay > 0))
  callout_reset(&dev->vblank_disable_callout,
      (drm_vblank_offdelay * DRM_HZ) / 1000,
      vblank_disable_fn, dev);
}
