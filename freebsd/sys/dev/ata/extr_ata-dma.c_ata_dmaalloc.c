
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_dmaslot {int data_map; int data_tag; int sg_bus; int sg; int sg_map; int sg_tag; } ;
struct ata_dc_cb_args {int maddr; scalar_t__ error; } ;
struct TYPE_2__ {int dma_slots; int segsize; int max_iosize; int max_address; int boundary; int alignment; int dmatag; struct ata_dmaslot* slot; } ;
struct ata_channel {int dev; TYPE_1__ dma; } ;
typedef int device_t ;


 int ATA_DMA_ENTRIES ;
 int ATA_DMA_SLOTS ;
 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_WAITOK ;
 int BUS_SPACE_MAXADDR ;
 int MAXTABSZ ;
 int PAGE_SIZE ;
 int ata_dmafree (int ) ;
 int ata_dmasetupc_cb ;
 scalar_t__ bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 scalar_t__ bus_dmamap_create (int ,int ,int *) ;
 scalar_t__ bus_dmamap_load (int ,int ,int ,int ,int ,struct ata_dc_cb_args*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bzero (struct ata_dmaslot*,int) ;
 struct ata_channel* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
ata_dmaalloc(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);
    struct ata_dc_cb_args dcba;
    int i;


    bzero(ch->dma.slot, sizeof(struct ata_dmaslot) * ATA_DMA_SLOTS);
    for (i = 0; i < ch->dma.dma_slots; i++) {
 struct ata_dmaslot *slot = &ch->dma.slot[i];

 if (bus_dma_tag_create(ch->dma.dmatag, PAGE_SIZE, PAGE_SIZE,
          ch->dma.max_address, BUS_SPACE_MAXADDR,
          ((void*)0), ((void*)0), PAGE_SIZE, 1, PAGE_SIZE,
          0, ((void*)0), ((void*)0), &slot->sg_tag)) {
            device_printf(ch->dev, "FAILURE - create sg_tag\n");
            goto error;
 }

 if (bus_dmamem_alloc(slot->sg_tag, (void **)&slot->sg, BUS_DMA_WAITOK,
        &slot->sg_map)) {
     device_printf(ch->dev, "FAILURE - alloc sg_map\n");
     goto error;
        }

 if (bus_dmamap_load(slot->sg_tag, slot->sg_map, slot->sg, MAXTABSZ,
       ata_dmasetupc_cb, &dcba, 0) || dcba.error) {
     device_printf(ch->dev, "FAILURE - load sg\n");
     goto error;
 }
 slot->sg_bus = dcba.maddr;

 if (bus_dma_tag_create(ch->dma.dmatag,
          ch->dma.alignment, ch->dma.boundary,
                               ch->dma.max_address, BUS_SPACE_MAXADDR,
                               ((void*)0), ((void*)0), ch->dma.max_iosize,
                               ATA_DMA_ENTRIES, ch->dma.segsize,
                               BUS_DMA_ALLOCNOW, ((void*)0), ((void*)0), &slot->data_tag)) {
     device_printf(ch->dev, "FAILURE - create data_tag\n");
     goto error;
 }

 if (bus_dmamap_create(slot->data_tag, 0, &slot->data_map)) {
     device_printf(ch->dev, "FAILURE - create data_map\n");
     goto error;
        }
    }

    return;

error:
    device_printf(dev, "WARNING - DMA allocation failed, disabling DMA\n");
    ata_dmafree(dev);
}
