
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {TYPE_1__* chip; } ;
struct ata_channel {int unit; scalar_t__ devices; } ;
typedef int device_t ;
struct TYPE_2__ {int cfg2; } ;


 int VIABAR ;
 int ata_generic_reset (int ) ;
 scalar_t__ ata_sata_phy_reset (int ,int,int) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static void
ata_via_reset(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
    struct ata_channel *ch = device_get_softc(dev);

    if ((ctlr->chip->cfg2 & VIABAR) && (ch->unit > 1))
        ata_generic_reset(dev);
    else {
 if (ata_sata_phy_reset(dev, -1, 1))
     ata_generic_reset(dev);
 else
     ch->devices = 0;
    }
}
