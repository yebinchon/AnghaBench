
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {TYPE_1__* chip; } ;
struct ata_channel {int flags; } ;
typedef int device_t ;
struct TYPE_2__ {int cfg1; } ;


 int AMD_CABLE ;
 int ATA_CHECKS_CABLE ;
 int ata_pci_ch_attach (int ) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
ata_amd_ch_attach(device_t dev)
{
 struct ata_pci_controller *ctlr;
 struct ata_channel *ch;
 int error;

 ctlr = device_get_softc(device_get_parent(dev));
 ch = device_get_softc(dev);
 error = ata_pci_ch_attach(dev);
 if (ctlr->chip->cfg1 & AMD_CABLE)
  ch->flags |= ATA_CHECKS_CABLE;
 return (error);
}
