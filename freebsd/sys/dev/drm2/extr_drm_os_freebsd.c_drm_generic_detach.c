
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dev; int ** pcir; int * pcirid; } ;
typedef int device_t ;


 int DRM_ERROR (char*) ;
 int DRM_MAX_PCI_RESOURCE ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct drm_device* device_get_softc (int ) ;
 int drm_put_dev (struct drm_device*) ;
 scalar_t__ pci_disable_busmaster (int ) ;

int
drm_generic_detach(device_t kdev)
{
 struct drm_device *dev;
 int i;

 dev = device_get_softc(kdev);

 drm_put_dev(dev);






 for (i = 0; i < DRM_MAX_PCI_RESOURCE; i++) {
  if (dev->pcir[i] == ((void*)0))
   continue;
  bus_release_resource(dev->dev, SYS_RES_MEMORY,
      dev->pcirid[i], dev->pcir[i]);
  dev->pcir[i] = ((void*)0);
 }

 if (pci_disable_busmaster(dev->dev))
  DRM_ERROR("Request to disable bus-master failed.\n");

 return (0);
}
