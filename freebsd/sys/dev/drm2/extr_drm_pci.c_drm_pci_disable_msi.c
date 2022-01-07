
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {scalar_t__ irqrid; scalar_t__ msi_enabled; int dev; } ;


 int pci_release_msi (int ) ;

void
drm_pci_disable_msi(struct drm_device *dev)
{

 if (!dev->msi_enabled)
  return;

 pci_release_msi(dev->dev);
 dev->msi_enabled = 0;
 dev->irqrid = 0;
}
