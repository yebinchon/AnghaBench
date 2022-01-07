
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;
typedef scalar_t__ bus_addr_t ;


 int BUS_DMA_NOWAIT ;
 scalar_t__ bus_dmamap_load (int ,int ,void*,int ,int ,scalar_t__*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bus_dmamem_free (int ,void*,int ) ;
 int setmap ;

__attribute__((used)) static void *
dma_malloc(bus_dma_tag_t dmat, u_int32_t sz, bus_addr_t *phys,
    bus_dmamap_t *map)
{
 void *buf;

 if (bus_dmamem_alloc(dmat, &buf, BUS_DMA_NOWAIT, map))
  return ((void*)0);
 if (bus_dmamap_load(dmat, *map, buf, sz, setmap, phys, 0) != 0 ||
     *phys == 0) {
  bus_dmamem_free(dmat, buf, *map);
  return ((void*)0);
 }
 return buf;
}
