
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_request {int flags; TYPE_1__* dma; int parent; } ;
struct TYPE_4__ {int flags; } ;
struct ata_channel {TYPE_2__ dma; } ;
struct TYPE_3__ {int sg_bus; } ;


 int ATA_BMCMD_PORT ;
 int ATA_BMCMD_START_STOP ;
 int ATA_BMCMD_WRITE_READ ;
 int ATA_BMDTP_PORT ;
 int ATA_BMSTAT_ERROR ;
 int ATA_BMSTAT_INTERRUPT ;
 int ATA_BMSTAT_PORT ;
 int ATA_DEBUG_RQ (struct ata_request*,char*) ;
 int ATA_DMA_ACTIVE ;
 int ATA_IDX_INB (struct ata_channel*,int ) ;
 int ATA_IDX_OUTB (struct ata_channel*,int ,int) ;
 int ATA_IDX_OUTL (struct ata_channel*,int ,int ) ;
 int ATA_R_READ ;
 struct ata_channel* device_get_softc (int ) ;

__attribute__((used)) static int
ata_pci_dmastart(struct ata_request *request)
{
    struct ata_channel *ch = device_get_softc(request->parent);

    ATA_DEBUG_RQ(request, "dmastart");

    ATA_IDX_OUTB(ch, ATA_BMSTAT_PORT, (ATA_IDX_INB(ch, ATA_BMSTAT_PORT) |
   (ATA_BMSTAT_INTERRUPT | ATA_BMSTAT_ERROR)));
    ATA_IDX_OUTL(ch, ATA_BMDTP_PORT, request->dma->sg_bus);
    ch->dma.flags |= ATA_DMA_ACTIVE;
    ATA_IDX_OUTB(ch, ATA_BMCMD_PORT,
   (ATA_IDX_INB(ch, ATA_BMCMD_PORT) & ~ATA_BMCMD_WRITE_READ) |
   ((request->flags & ATA_R_READ) ? ATA_BMCMD_WRITE_READ : 0)|
   ATA_BMCMD_START_STOP);
    return 0;
}
