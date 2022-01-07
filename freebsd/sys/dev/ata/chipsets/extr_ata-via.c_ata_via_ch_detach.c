
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_pci_controller {TYPE_1__* chip; } ;
struct ata_channel {TYPE_2__* r_io; int unit; } ;
typedef int device_t ;
struct TYPE_4__ {int res; } ;
struct TYPE_3__ {int cfg2; } ;


 size_t ATA_CONTROL ;
 int ENXIO ;
 int PCIR_BAR (int ) ;
 int SYS_RES_IOPORT ;
 int VIABAR ;
 scalar_t__ ata_pci_ch_detach (int ) ;
 int ata_pci_dmafini (int ) ;
 int bus_release_resource (int ,int ,int,int ) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
ata_via_ch_detach(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
    struct ata_channel *ch = device_get_softc(dev);


    if (ctlr->chip->cfg2 & VIABAR) {
 int rid;

 rid = PCIR_BAR(ch->unit);
 bus_release_resource(device_get_parent(dev),
     SYS_RES_IOPORT, rid, ch->r_io[ATA_CONTROL].res);

 ata_pci_dmafini(dev);
    }
    else {

 if (ata_pci_ch_detach(dev))
     return ENXIO;
    }

    return 0;
}
