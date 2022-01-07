
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_pci_controller {int (* getrev ) (int ,int) ;} ;
struct ata_channel {int flags; } ;
typedef int device_t ;


 int ATA_SATA ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int stub1 (int ,int) ;

__attribute__((used)) static int
ata_pcichannel_getrev(device_t dev, int target)
{
 struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
 struct ata_channel *ch = device_get_softc(dev);

 if (ch->flags & ATA_SATA) {
  if (ctlr->getrev)
   return (ctlr->getrev(dev, target));
  else
   return (0xff);
 } else
  return (0);
}
