
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct an_softc {int an_dtag; } ;
struct an_dma_alloc {int an_dma_map; int an_dma_vaddr; int an_dma_size; int an_dma_paddr; } ;
typedef int bus_size_t ;


 int BUS_DMA_NOWAIT ;
 int an_dma_malloc_cb ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,int *,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;

__attribute__((used)) static int
an_dma_malloc(struct an_softc *sc, bus_size_t size, struct an_dma_alloc *dma,
    int mapflags)
{
 int r;

 r = bus_dmamem_alloc(sc->an_dtag, (void**) &dma->an_dma_vaddr,
        BUS_DMA_NOWAIT, &dma->an_dma_map);
 if (r != 0)
  goto fail_1;

 r = bus_dmamap_load(sc->an_dtag, dma->an_dma_map, dma->an_dma_vaddr,
       size,
       an_dma_malloc_cb,
       &dma->an_dma_paddr,
       mapflags | BUS_DMA_NOWAIT);
 if (r != 0)
  goto fail_2;

 dma->an_dma_size = size;
 return (0);

fail_2:
 bus_dmamap_unload(sc->an_dtag, dma->an_dma_map);
fail_1:
 bus_dmamem_free(sc->an_dtag, dma->an_dma_vaddr, dma->an_dma_map);
 return (r);
}
