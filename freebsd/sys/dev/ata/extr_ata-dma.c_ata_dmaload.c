
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_request {int bytecount; int flags; TYPE_2__* dma; int parent; int data; int ccb; } ;
struct ata_dmasetprd_args {int error; int nsegs; void* dmatab; } ;
struct TYPE_3__ {int alignment; int max_iosize; int setprd; TYPE_2__* slot; } ;
struct ata_channel {TYPE_1__ dma; } ;
struct TYPE_4__ {int data_map; int data_tag; int sg_map; int sg_tag; void* sg; } ;


 int ATA_DEBUG_RQ (struct ata_request*,char*) ;
 int ATA_R_DATA_IN_CCB ;
 int ATA_R_READ ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_NOWAIT ;
 int EIO ;
 int ata_dmaunload (struct ata_request*) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,struct ata_dmasetprd_args*,int ) ;
 int bus_dmamap_load_ccb (int ,int ,int ,int ,struct ata_dmasetprd_args*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 struct ata_channel* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static int
ata_dmaload(struct ata_request *request, void *addr, int *entries)
{
    struct ata_channel *ch = device_get_softc(request->parent);
    struct ata_dmasetprd_args dspa;
    int error;

    ATA_DEBUG_RQ(request, "dmaload");

    if (request->dma) {
 device_printf(request->parent,
        "FAILURE - already active DMA on this device\n");
 return EIO;
    }
    if (!request->bytecount) {
 device_printf(request->parent,
        "FAILURE - zero length DMA transfer attempted\n");
 return EIO;
    }
    if (request->bytecount & (ch->dma.alignment - 1)) {
 device_printf(request->parent,
        "FAILURE - odd-sized DMA transfer attempt %d %% %d\n",
        request->bytecount, ch->dma.alignment);
 return EIO;
    }
    if (request->bytecount > ch->dma.max_iosize) {
 device_printf(request->parent,
        "FAILURE - oversized DMA transfer attempt %d > %d\n",
        request->bytecount, ch->dma.max_iosize);
 return EIO;
    }


    request->dma = &ch->dma.slot[0];

    if (addr)
 dspa.dmatab = addr;
    else
 dspa.dmatab = request->dma->sg;

    if (request->flags & ATA_R_DATA_IN_CCB)
        error = bus_dmamap_load_ccb(request->dma->data_tag,
    request->dma->data_map, request->ccb,
    ch->dma.setprd, &dspa, BUS_DMA_NOWAIT);
    else
        error = bus_dmamap_load(request->dma->data_tag, request->dma->data_map,
    request->data, request->bytecount,
    ch->dma.setprd, &dspa, BUS_DMA_NOWAIT);
    if (error || (error = dspa.error)) {
 device_printf(request->parent, "FAILURE - load data\n");
 goto error;
    }

    if (entries)
 *entries = dspa.nsegs;

    bus_dmamap_sync(request->dma->sg_tag, request->dma->sg_map,
      BUS_DMASYNC_PREWRITE);
    bus_dmamap_sync(request->dma->data_tag, request->dma->data_map,
      (request->flags & ATA_R_READ) ?
      BUS_DMASYNC_PREREAD : BUS_DMASYNC_PREWRITE);
    return 0;

error:
    ata_dmaunload(request);
    return EIO;
}
