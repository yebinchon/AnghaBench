
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {scalar_t__ num_crtcs; int vblank_time_lock; int vbl_lock; int _vblank_time; int vblank_inmodeset; int last_vblank_wait; int last_vblank; int vblank_enabled; int vblank_refcount; int _vblank_count; int vblank_disable_callout; } ;


 int DRM_MEM_VBLANK ;
 int callout_stop (int *) ;
 int free (int ,int ) ;
 int mtx_destroy (int *) ;
 int vblank_disable_fn (struct drm_device*) ;

void drm_vblank_cleanup(struct drm_device *dev)
{

 if (dev->num_crtcs == 0)
  return;

 callout_stop(&dev->vblank_disable_callout);

 vblank_disable_fn(dev);

 free(dev->_vblank_count, DRM_MEM_VBLANK);
 free(dev->vblank_refcount, DRM_MEM_VBLANK);
 free(dev->vblank_enabled, DRM_MEM_VBLANK);
 free(dev->last_vblank, DRM_MEM_VBLANK);
 free(dev->last_vblank_wait, DRM_MEM_VBLANK);
 free(dev->vblank_inmodeset, DRM_MEM_VBLANK);
 free(dev->_vblank_time, DRM_MEM_VBLANK);

 mtx_destroy(&dev->vbl_lock);
 mtx_destroy(&dev->vblank_time_lock);

 dev->num_crtcs = 0;
}
