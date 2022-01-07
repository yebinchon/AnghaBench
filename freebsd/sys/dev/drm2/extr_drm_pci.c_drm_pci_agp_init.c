
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {TYPE_2__* agp; } ;
struct TYPE_3__ {scalar_t__ ai_aperture_base; int ai_aperture_size; } ;
struct TYPE_4__ {int agp_mtrr; TYPE_1__ agp_info; } ;


 int DRIVER_REQUIRE_AGP ;
 int DRM_ERROR (char*) ;
 int DRM_MTRR_WC ;
 int EINVAL ;
 TYPE_2__* drm_agp_init (struct drm_device*) ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 scalar_t__ drm_core_has_AGP (struct drm_device*) ;
 scalar_t__ drm_core_has_MTRR (struct drm_device*) ;
 scalar_t__ drm_mtrr_add (scalar_t__,int ,int ) ;
 scalar_t__ drm_pci_device_is_agp (struct drm_device*) ;

int drm_pci_agp_init(struct drm_device *dev)
{
 if (drm_core_has_AGP(dev)) {
  if (drm_pci_device_is_agp(dev))
   dev->agp = drm_agp_init(dev);
  if (drm_core_check_feature(dev, DRIVER_REQUIRE_AGP)
      && (dev->agp == ((void*)0))) {
   DRM_ERROR("Cannot initialize the agpgart module.\n");
   return -EINVAL;
  }
  if (drm_core_has_MTRR(dev)) {
   if (dev->agp && dev->agp->agp_info.ai_aperture_base != 0) {
    if (drm_mtrr_add(dev->agp->agp_info.ai_aperture_base,
        dev->agp->agp_info.ai_aperture_size, DRM_MTRR_WC) == 0)
     dev->agp->agp_mtrr = 1;
    else
     dev->agp->agp_mtrr = -1;
   }
  }
 }
 return 0;
}
