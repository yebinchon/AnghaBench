
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
struct ata_channel {int flags; TYPE_1__ hw; } ;
typedef int device_t ;


 int ATA_CHECKS_CABLE ;
 int ENXIO ;
 scalar_t__ ata_pci_ch_attach (int ) ;
 int ata_promise_tx2_status ;
 struct ata_channel* device_get_softc (int ) ;

__attribute__((used)) static int
ata_promise_tx2_ch_attach(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);

    if (ata_pci_ch_attach(dev))
 return ENXIO;

    ch->hw.status = ata_promise_tx2_status;
    ch->flags |= ATA_CHECKS_CABLE;
    return 0;
}
