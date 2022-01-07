
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int PCIY_EXPRESS ;
 int drm_device_find_capability (struct drm_device*,int ) ;

int
drm_pci_device_is_pcie(struct drm_device *dev)
{

 return (drm_device_find_capability(dev, PCIY_EXPRESS));
}
