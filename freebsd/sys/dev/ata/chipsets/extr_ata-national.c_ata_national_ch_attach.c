
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int alignment; int max_iosize; } ;
struct ata_channel {TYPE_1__ dma; } ;
typedef int device_t ;


 int DEV_BSIZE ;
 int ata_pci_ch_attach (int ) ;
 struct ata_channel* device_get_softc (int ) ;

__attribute__((used)) static int
ata_national_ch_attach(device_t dev)
{
 struct ata_channel *ch = device_get_softc(dev);

 ch->dma.alignment = 16;
 ch->dma.max_iosize = 64 * DEV_BSIZE;
 return (ata_pci_ch_attach(dev));
}
