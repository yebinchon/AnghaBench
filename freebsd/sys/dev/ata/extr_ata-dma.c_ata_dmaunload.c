
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_request {int flags; TYPE_1__* dma; } ;
struct TYPE_2__ {int data_map; int data_tag; int sg_map; int sg_tag; } ;


 int ATA_DEBUG_RQ (struct ata_request*,char*) ;
 int ATA_R_READ ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;

int
ata_dmaunload(struct ata_request *request)
{
    ATA_DEBUG_RQ(request, "dmaunload");

    if (request->dma) {
 bus_dmamap_sync(request->dma->sg_tag, request->dma->sg_map,
   BUS_DMASYNC_POSTWRITE);
 bus_dmamap_sync(request->dma->data_tag, request->dma->data_map,
   (request->flags & ATA_R_READ) ?
   BUS_DMASYNC_POSTREAD : BUS_DMASYNC_POSTWRITE);

 bus_dmamap_unload(request->dma->data_tag, request->dma->data_map);
        request->dma = ((void*)0);
    }
    return 0;
}
