
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_driver {int driver_features; } ;
struct drm_device {int pcir_lock; int ctxlist_mutex; int dev_struct_lock; int event_lock; int count_lock; int irq_lock; int map_hash; TYPE_2__* agp; struct drm_driver* driver; } ;
struct TYPE_3__ {int ai_aperture_size; int ai_aperture_base; } ;
struct TYPE_4__ {scalar_t__ agp_mtrr; TYPE_1__ agp_info; } ;


 int DRIVER_GEM ;
 int DRM_DEBUG (char*,int) ;
 int DRM_MEM_AGPLISTS ;
 int DRM_MTRR_WC ;
 scalar_t__ drm_core_has_AGP (struct drm_device*) ;
 scalar_t__ drm_core_has_MTRR (struct drm_device*) ;
 int drm_ctxbitmap_cleanup (struct drm_device*) ;
 int drm_gem_destroy (struct drm_device*) ;
 int drm_ht_remove (int *) ;
 int drm_mtrr_del (scalar_t__,int ,int ,int ) ;
 int drm_sysctl_cleanup (struct drm_device*) ;
 int free (TYPE_2__*,int ) ;
 int mtx_destroy (int *) ;
 int sx_destroy (int *) ;

void drm_cancel_fill_in_dev(struct drm_device *dev)
{
 struct drm_driver *driver;

 driver = dev->driver;

 drm_sysctl_cleanup(dev);
 if (driver->driver_features & DRIVER_GEM)
  drm_gem_destroy(dev);
 drm_ctxbitmap_cleanup(dev);

 if (drm_core_has_MTRR(dev) && drm_core_has_AGP(dev) &&
     dev->agp && dev->agp->agp_mtrr >= 0) {
  int retval;
  retval = drm_mtrr_del(dev->agp->agp_mtrr,
      dev->agp->agp_info.ai_aperture_base,
      dev->agp->agp_info.ai_aperture_size,
      DRM_MTRR_WC);
  DRM_DEBUG("mtrr_del=%d\n", retval);
 }
 free(dev->agp, DRM_MEM_AGPLISTS);
 dev->agp = ((void*)0);

 drm_ht_remove(&dev->map_hash);

 mtx_destroy(&dev->irq_lock);
 mtx_destroy(&dev->count_lock);
 mtx_destroy(&dev->event_lock);
 sx_destroy(&dev->dev_struct_lock);
 mtx_destroy(&dev->ctxlist_mutex);
 mtx_destroy(&dev->pcir_lock);
}
