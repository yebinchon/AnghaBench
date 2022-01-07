
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_request {int flags; int bytecount; TYPE_1__* dma; int parent; } ;
struct ata_pci_controller {int r_res1; } ;
struct TYPE_4__ {int flags; } ;
struct ata_channel {TYPE_2__ dma; scalar_t__ unit; } ;
struct TYPE_3__ {int sg_bus; } ;


 int ATA_BMCMD_PORT ;
 int ATA_BMCMD_START_STOP ;
 int ATA_BMCMD_WRITE_READ ;
 int ATA_BMDTP_PORT ;
 int ATA_BMSTAT_ERROR ;
 int ATA_BMSTAT_INTERRUPT ;
 int ATA_BMSTAT_PORT ;
 int ATA_DMA_ACTIVE ;
 int ATA_IDX_INB (struct ata_channel*,int ) ;
 int ATA_IDX_OUTB (struct ata_channel*,int ,int) ;
 int ATA_IDX_OUTL (struct ata_channel*,int ,int ) ;
 int ATA_INB (int ,int) ;
 int ATA_OUTB (int ,int,int) ;
 int ATA_OUTL (int ,int,int) ;
 int ATA_R_48BIT ;
 int ATA_R_READ ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
ata_promise_dmastart(struct ata_request *request)
{
    struct ata_pci_controller *ctlr=device_get_softc(device_get_parent(request->parent));
    struct ata_channel *ch = device_get_softc(request->parent);

    if (request->flags & ATA_R_48BIT) {
 ATA_OUTB(ctlr->r_res1, 0x11,
   ATA_INB(ctlr->r_res1, 0x11) | (ch->unit ? 0x08 : 0x02));
 ATA_OUTL(ctlr->r_res1, ch->unit ? 0x24 : 0x20,
   ((request->flags & ATA_R_READ) ? 0x05000000 : 0x06000000) |
   (request->bytecount >> 1));
    }
    ATA_IDX_OUTB(ch, ATA_BMSTAT_PORT, (ATA_IDX_INB(ch, ATA_BMSTAT_PORT) |
   (ATA_BMSTAT_INTERRUPT | ATA_BMSTAT_ERROR)));
    ATA_IDX_OUTL(ch, ATA_BMDTP_PORT, request->dma->sg_bus);
    ATA_IDX_OUTB(ch, ATA_BMCMD_PORT,
   ((request->flags & ATA_R_READ) ? ATA_BMCMD_WRITE_READ : 0) |
   ATA_BMCMD_START_STOP);
    ch->dma.flags |= ATA_DMA_ACTIVE;
    return 0;
}
