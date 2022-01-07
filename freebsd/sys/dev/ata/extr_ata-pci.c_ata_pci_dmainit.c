
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reset; int stop; int start; } ;
struct ata_channel {TYPE_1__ dma; } ;
typedef int device_t ;


 int ata_dmainit (int ) ;
 int ata_pci_dmareset ;
 int ata_pci_dmastart ;
 int ata_pci_dmastop ;
 struct ata_channel* device_get_softc (int ) ;

void
ata_pci_dmainit(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);

    ata_dmainit(dev);
    ch->dma.start = ata_pci_dmastart;
    ch->dma.stop = ata_pci_dmastop;
    ch->dma.reset = ata_pci_dmareset;
}
