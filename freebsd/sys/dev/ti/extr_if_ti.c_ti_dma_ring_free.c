
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ti_softc {int dummy; } ;
typedef int bus_dmamap_t ;
typedef int * bus_dma_tag_t ;
typedef scalar_t__ bus_addr_t ;


 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

__attribute__((used)) static void
ti_dma_ring_free(struct ti_softc *sc, bus_dma_tag_t *tag, uint8_t **ring,
    bus_dmamap_t map, bus_addr_t *paddr)
{

 if (*paddr != 0) {
  bus_dmamap_unload(*tag, map);
  *paddr = 0;
 }
 if (*ring != ((void*)0)) {
  bus_dmamem_free(*tag, *ring, map);
  *ring = ((void*)0);
 }
 if (*tag) {
  bus_dma_tag_destroy(*tag);
  *tag = ((void*)0);
 }
}
