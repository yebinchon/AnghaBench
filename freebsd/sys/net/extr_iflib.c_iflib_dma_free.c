
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* iflib_dma_info_t ;
struct TYPE_3__ {scalar_t__ idi_paddr; int * idi_tag; int * idi_vaddr; int idi_map; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 scalar_t__ IF_BAD_DMA ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_sync (int *,int ,int) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

void
iflib_dma_free(iflib_dma_info_t dma)
{
 if (dma->idi_tag == ((void*)0))
  return;
 if (dma->idi_paddr != IF_BAD_DMA) {
  bus_dmamap_sync(dma->idi_tag, dma->idi_map,
      BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(dma->idi_tag, dma->idi_map);
  dma->idi_paddr = IF_BAD_DMA;
 }
 if (dma->idi_vaddr != ((void*)0)) {
  bus_dmamem_free(dma->idi_tag, dma->idi_vaddr, dma->idi_map);
  dma->idi_vaddr = ((void*)0);
 }
 bus_dma_tag_destroy(dma->idi_tag);
 dma->idi_tag = ((void*)0);
}
