
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {scalar_t__ irq; int * irqr; int irqrid; int dev; } ;


 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;

__attribute__((used)) static void drm_platform_free_irq(struct drm_device *dev)
{
 if (dev->irqr == ((void*)0))
  return;

 bus_release_resource(dev->dev, SYS_RES_IRQ,
     dev->irqrid, dev->irqr);

 dev->irqr = ((void*)0);
 dev->irq = 0;
}
