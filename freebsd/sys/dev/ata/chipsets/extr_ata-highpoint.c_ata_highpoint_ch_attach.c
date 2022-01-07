
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {TYPE_1__* chip; } ;
struct ata_channel {int flags; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ cfg1; } ;


 int ATA_ALWAYS_DMASTAT ;
 int ATA_CHECKS_CABLE ;
 int ATA_NO_ATAPI_DMA ;
 int ENXIO ;
 scalar_t__ HPT_366 ;
 scalar_t__ ata_pci_ch_attach (int ) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
ata_highpoint_ch_attach(device_t dev)
{
 struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
 struct ata_channel *ch = device_get_softc(dev);


 if (ata_pci_ch_attach(dev))
  return (ENXIO);
 ch->flags |= ATA_ALWAYS_DMASTAT;
 ch->flags |= ATA_CHECKS_CABLE;
 if (ctlr->chip->cfg1 == HPT_366)
  ch->flags |= ATA_NO_ATAPI_DMA;
 return (0);
}
