
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_dmaslot {int * data_tag; int * sg_tag; int * data_map; int * sg; int sg_map; scalar_t__ sg_bus; } ;
struct TYPE_2__ {struct ata_dmaslot* slot; } ;
struct ata_channel {TYPE_1__ dma; } ;
typedef int device_t ;


 int ATA_DMA_SLOTS ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;
 struct ata_channel* device_get_softc (int ) ;

__attribute__((used)) static void
ata_dmafree(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);
    int i;


    for (i = 0; i < ATA_DMA_SLOTS; i++) {
 struct ata_dmaslot *slot = &ch->dma.slot[i];

 if (slot->sg_bus) {
            bus_dmamap_unload(slot->sg_tag, slot->sg_map);
            slot->sg_bus = 0;
 }
 if (slot->sg) {
            bus_dmamem_free(slot->sg_tag, slot->sg, slot->sg_map);
            slot->sg = ((void*)0);
 }
 if (slot->data_map) {
            bus_dmamap_destroy(slot->data_tag, slot->data_map);
            slot->data_map = ((void*)0);
 }
 if (slot->sg_tag) {
            bus_dma_tag_destroy(slot->sg_tag);
            slot->sg_tag = ((void*)0);
 }
 if (slot->data_tag) {
            bus_dma_tag_destroy(slot->data_tag);
            slot->data_tag = ((void*)0);
 }
    }
}
