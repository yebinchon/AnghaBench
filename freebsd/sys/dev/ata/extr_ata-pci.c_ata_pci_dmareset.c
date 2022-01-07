
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_request {int dummy; } ;
struct TYPE_2__ {int (* unload ) (struct ata_request*) ;int flags; } ;
struct ata_channel {TYPE_1__ dma; struct ata_request* running; } ;
typedef int device_t ;


 int ATA_BMCMD_PORT ;
 int ATA_BMCMD_START_STOP ;
 int ATA_BMSTAT_ERROR ;
 int ATA_BMSTAT_INTERRUPT ;
 int ATA_BMSTAT_PORT ;
 int ATA_DMA_ACTIVE ;
 int ATA_IDX_INB (struct ata_channel*,int ) ;
 int ATA_IDX_OUTB (struct ata_channel*,int ,int) ;
 struct ata_channel* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int stub1 (struct ata_request*) ;

__attribute__((used)) static void
ata_pci_dmareset(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);
    struct ata_request *request;

    ATA_IDX_OUTB(ch, ATA_BMCMD_PORT,
   ATA_IDX_INB(ch, ATA_BMCMD_PORT) & ~ATA_BMCMD_START_STOP);
    ch->dma.flags &= ~ATA_DMA_ACTIVE;
    ATA_IDX_OUTB(ch, ATA_BMSTAT_PORT, ATA_BMSTAT_INTERRUPT | ATA_BMSTAT_ERROR);
    if ((request = ch->running)) {
 device_printf(dev, "DMA reset calling unload\n");
 ch->dma.unload(request);
    }
}
