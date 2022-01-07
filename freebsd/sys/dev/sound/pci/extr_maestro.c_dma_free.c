
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;


 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,void*,int ) ;

__attribute__((used)) static void
dma_free(bus_dma_tag_t dmat, void *buf, bus_dmamap_t map)
{
 bus_dmamap_unload(dmat, map);
 bus_dmamem_free(dmat, buf, map);
}
