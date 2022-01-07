
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_irq_busid {int busnum; scalar_t__ devnum; scalar_t__ funcnum; int irq; } ;
struct drm_device {int pci_bus; scalar_t__ pci_slot; scalar_t__ pci_func; int irq; } ;


 int DRM_DEBUG (char*,int,scalar_t__,scalar_t__,int ) ;
 int EINVAL ;
 int drm_get_pci_domain (struct drm_device*) ;

__attribute__((used)) static int drm_pci_irq_by_busid(struct drm_device *dev, struct drm_irq_busid *p)
{
 if ((p->busnum >> 8) != drm_get_pci_domain(dev) ||
     (p->busnum & 0xff) != dev->pci_bus ||
     p->devnum != dev->pci_slot || p->funcnum != dev->pci_func)
  return -EINVAL;

 p->irq = dev->irq;

 DRM_DEBUG("%d:%d:%d => IRQ %d\n", p->busnum, p->devnum, p->funcnum,
    p->irq);
 return 0;
}
