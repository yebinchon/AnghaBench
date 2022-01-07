
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubsec_softc {int dummy; } ;
struct ubsec_dma_alloc {int dma_tag; int dma_map; int dma_vaddr; } ;


 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;

__attribute__((used)) static void
ubsec_dma_free(struct ubsec_softc *sc, struct ubsec_dma_alloc *dma)
{
 bus_dmamap_unload(dma->dma_tag, dma->dma_map);
 bus_dmamem_free(dma->dma_tag, dma->dma_vaddr, dma->dma_map);
 bus_dma_tag_destroy(dma->dma_tag);
}
