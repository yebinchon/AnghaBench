
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct device {int dummy; } ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;
typedef int bus_addr_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int PAGE_SIZE ;
 int al_dma_map_addr ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,void*,int,int ,int *,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (struct device*) ;
 int device_printf (struct device*,char*,int) ;

__attribute__((used)) static int
al_dma_alloc_coherent(struct device *dev, bus_dma_tag_t *tag, bus_dmamap_t *map,
    bus_addr_t *baddr, void **vaddr, uint32_t size)
{
 int ret;
 uint32_t maxsize = ((size - 1)/PAGE_SIZE + 1) * PAGE_SIZE;

 ret = bus_dma_tag_create(bus_get_dma_tag(dev), 8, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     maxsize, 1, maxsize, BUS_DMA_COHERENT, ((void*)0), ((void*)0), tag);
 if (ret != 0) {
  device_printf(dev,
      "failed to create bus tag, ret = %d\n", ret);
  return (ret);
 }

 ret = bus_dmamem_alloc(*tag, vaddr,
     BUS_DMA_COHERENT | BUS_DMA_ZERO, map);
 if (ret != 0) {
  device_printf(dev,
      "failed to allocate dmamem, ret = %d\n", ret);
  return (ret);
 }

 ret = bus_dmamap_load(*tag, *map, *vaddr,
     size, al_dma_map_addr, baddr, 0);
 if (ret != 0) {
  device_printf(dev,
      "failed to allocate bus_dmamap_load, ret = %d\n", ret);
  return (ret);
 }

 return (0);
}
