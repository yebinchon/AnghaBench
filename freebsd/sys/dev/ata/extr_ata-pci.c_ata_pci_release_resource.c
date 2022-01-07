
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct ata_pci_controller {scalar_t__ legacy; } ;
struct ata_channel {int unit; } ;
typedef int device_t ;




 int ATA_IRQ_RID ;
 int BUS_RELEASE_RESOURCE (int ,int ,int,int,struct resource*) ;
 int EINVAL ;
 int ENOENT ;
 int PCIR_BAR (int) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 scalar_t__ ata_devclass ;
 scalar_t__ device_get_devclass (int ) ;
 int device_get_parent (int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;

int
ata_pci_release_resource(device_t dev, device_t child, int type, int rid,
    struct resource *r)
{

 if (device_get_devclass(child) == ata_devclass) {
  struct ata_pci_controller *controller = device_get_softc(dev);
  int unit = ((struct ata_channel *)device_get_softc(child))->unit;

         if (type == SYS_RES_IOPORT) {
       switch (rid) {
   case 128:
           return BUS_RELEASE_RESOURCE(device_get_parent(dev), dev,
    SYS_RES_IOPORT,
    PCIR_BAR(0) + (unit << 3), r);
   case 129:
       return BUS_RELEASE_RESOURCE(device_get_parent(dev), dev,
    SYS_RES_IOPORT,
    PCIR_BAR(1) + (unit << 3), r);
   default:
       return ENOENT;
   }
  }
  if (type == SYS_RES_IRQ) {
   if (rid != ATA_IRQ_RID)
    return ENOENT;
   if (controller->legacy) {
    return BUS_RELEASE_RESOURCE(device_get_parent(dev), child,
        SYS_RES_IRQ, rid, r);
   } else
    return 0;
  }
 } else {
  if (type == SYS_RES_IRQ) {
   if (rid != ATA_IRQ_RID)
    return (ENOENT);
   return (0);
  } else {
   return (BUS_RELEASE_RESOURCE(device_get_parent(dev), child,
       type, rid, r));
  }
 }
 return (EINVAL);
}
