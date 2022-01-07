
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;
typedef int bus_dmamap_t ;
typedef scalar_t__ bus_dma_tag_t ;
typedef scalar_t__ bus_addr_t ;


 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_dmamap_unload (scalar_t__,int ) ;
 int bus_dmamem_free (scalar_t__,void*,int ) ;

__attribute__((used)) static int
free_ring(struct adapter *sc, bus_dma_tag_t tag, bus_dmamap_t map,
    bus_addr_t pa, void *va)
{
 if (pa)
  bus_dmamap_unload(tag, map);
 if (va)
  bus_dmamem_free(tag, va, map);
 if (tag)
  bus_dma_tag_destroy(tag);

 return (0);
}
