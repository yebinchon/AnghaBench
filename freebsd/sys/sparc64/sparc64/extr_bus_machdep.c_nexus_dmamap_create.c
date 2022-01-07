
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;


 int sparc64_dma_alloc_map (int ,int *) ;

__attribute__((used)) static int
nexus_dmamap_create(bus_dma_tag_t dmat, int flags, bus_dmamap_t *mapp)
{

 return (sparc64_dma_alloc_map(dmat, mapp));
}
