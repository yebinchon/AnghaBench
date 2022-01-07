
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
struct ata_channel {TYPE_1__ hw; } ;
typedef int device_t ;


 int ata_generic_hw (int ) ;
 int ata_pci_status ;
 struct ata_channel* device_get_softc (int ) ;

void
ata_pci_hw(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);

    ata_generic_hw(dev);
    ch->hw.status = ata_pci_status;
}
