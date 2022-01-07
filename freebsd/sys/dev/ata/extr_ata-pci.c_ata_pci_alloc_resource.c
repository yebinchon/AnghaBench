
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource {int dummy; } ;
struct ata_pci_controller {struct resource* r_irq; scalar_t__ legacy; } ;
struct ata_channel {int unit; } ;
typedef int rman_res_t ;
typedef int device_t ;



 int ATA_CTLIOSIZE ;
 int ATA_CTLOFFSET ;

 int ATA_IOSIZE ;
 int ATA_IRQ_RID ;
 int ATA_PRIMARY ;
 int ATA_SECONDARY ;
 struct resource* BUS_ALLOC_RESOURCE (int ,int ,int,int*,int,int,int,int ) ;
 int PCIR_BAR (int) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 scalar_t__ ata_devclass ;
 scalar_t__ device_get_devclass (int ) ;
 int device_get_parent (int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;

struct resource *
ata_pci_alloc_resource(device_t dev, device_t child, int type, int *rid,
         rman_res_t start, rman_res_t end, rman_res_t count,
         u_int flags)
{
 struct ata_pci_controller *controller = device_get_softc(dev);
 struct resource *res = ((void*)0);

 if (device_get_devclass(child) == ata_devclass) {
  int unit = ((struct ata_channel *)device_get_softc(child))->unit;
  int myrid;

  if (type == SYS_RES_IOPORT) {
   switch (*rid) {
   case 128:
       if (controller->legacy) {
    start = (unit ? ATA_SECONDARY : ATA_PRIMARY);
    count = ATA_IOSIZE;
    end = start + count - 1;
       }
       myrid = PCIR_BAR(0) + (unit << 3);
       res = BUS_ALLOC_RESOURCE(device_get_parent(dev), dev,
    SYS_RES_IOPORT, &myrid,
    start, end, count, flags);
       break;
   case 129:
       if (controller->legacy) {
    start = (unit ? ATA_SECONDARY : ATA_PRIMARY) +
        ATA_CTLOFFSET;
    count = ATA_CTLIOSIZE;
    end = start + count - 1;
       }
       myrid = PCIR_BAR(1) + (unit << 3);
       res = BUS_ALLOC_RESOURCE(device_get_parent(dev), dev,
    SYS_RES_IOPORT, &myrid,
    start, end, count, flags);
       break;
   }
  }
  if (type == SYS_RES_IRQ && *rid == ATA_IRQ_RID) {
   if (controller->legacy) {
       int irq = (unit == 0 ? 14 : 15);

       res = BUS_ALLOC_RESOURCE(device_get_parent(dev), child,
    SYS_RES_IRQ, rid, irq, irq, 1, flags);
   } else
       res = controller->r_irq;
  }
 } else {
  if (type == SYS_RES_IRQ) {
   if (*rid != ATA_IRQ_RID)
    return (((void*)0));
   res = controller->r_irq;
  } else {
   res = BUS_ALLOC_RESOURCE(device_get_parent(dev), dev,
        type, rid, start, end, count, flags);
  }
 }
 return (res);
}
