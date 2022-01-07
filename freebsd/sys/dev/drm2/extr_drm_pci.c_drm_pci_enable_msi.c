
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int msi_enabled; int irqrid; int dev; } ;


 int DRM_DEBUG (char*,int) ;
 int DRM_INFO (char*,int) ;
 int ENOENT ;
 int drm_msi ;
 int pci_alloc_msi (int ,int*) ;
 int pci_msi_count (int ) ;

int
drm_pci_enable_msi(struct drm_device *dev)
{
 int msicount, ret;

 if (!drm_msi)
  return (-ENOENT);

 msicount = pci_msi_count(dev->dev);
 DRM_DEBUG("MSI count = %d\n", msicount);
 if (msicount > 1)
  msicount = 1;

 ret = pci_alloc_msi(dev->dev, &msicount);
 if (ret == 0) {
  DRM_INFO("MSI enabled %d message(s)\n", msicount);
  dev->msi_enabled = 1;
  dev->irqrid = 1;
 }

 return (-ret);
}
