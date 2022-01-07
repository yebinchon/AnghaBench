
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwdma_alloc {int dma_tag; int dma_map; int v_addr; } ;
struct firewire_comm {int dummy; } ;


 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;

void
fwdma_free(struct firewire_comm *fc, struct fwdma_alloc *dma)
{
        bus_dmamap_unload(dma->dma_tag, dma->dma_map);
 bus_dmamem_free(dma->dma_tag, dma->v_addr, dma->dma_map);
 bus_dma_tag_destroy(dma->dma_tag);
}
