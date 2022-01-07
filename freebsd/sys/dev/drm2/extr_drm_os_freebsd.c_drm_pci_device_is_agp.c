
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* device_is_agp ) (struct drm_device*) ;} ;


 int DRM_MIGHT_BE_AGP ;
 int PCIY_AGP ;
 int drm_device_find_capability (struct drm_device*,int ) ;
 int stub1 (struct drm_device*) ;

int
drm_pci_device_is_agp(struct drm_device *dev)
{
 if (dev->driver->device_is_agp != ((void*)0)) {
  int ret;




  ret = (*dev->driver->device_is_agp)(dev);
  if (ret != DRM_MIGHT_BE_AGP)
   return ret;
 }

 return (drm_device_find_capability(dev, PCIY_AGP));
}
