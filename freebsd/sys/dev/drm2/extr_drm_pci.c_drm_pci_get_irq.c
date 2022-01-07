
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int irq; scalar_t__ irqr; int dev; int irqrid; } ;


 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 scalar_t__ bus_alloc_resource_any (int ,int ,int *,int ) ;
 int dev_err (int ,char*) ;
 scalar_t__ rman_get_start (scalar_t__) ;

__attribute__((used)) static int drm_pci_get_irq(struct drm_device *dev)
{

 if (dev->irqr)
  return (dev->irq);

 dev->irqr = bus_alloc_resource_any(dev->dev, SYS_RES_IRQ,
     &dev->irqrid, RF_SHAREABLE);
 if (!dev->irqr) {
  dev_err(dev->dev, "Failed to allocate IRQ\n");
  return (0);
 }

 dev->irq = (int) rman_get_start(dev->irqr);

 return (dev->irq);
}
