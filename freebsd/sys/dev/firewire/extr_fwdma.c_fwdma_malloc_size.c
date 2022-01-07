
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_size_t ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;
typedef int bus_addr_t ;


 int bus_dmamap_load (int ,int ,void*,int ,int ,int *,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int,int *) ;
 int fwdma_map_cb ;
 int printf (char*) ;

void *
fwdma_malloc_size(bus_dma_tag_t dmat, bus_dmamap_t *dmamap,
 bus_size_t size, bus_addr_t *bus_addr, int flag)
{
 void *v_addr;

 if (bus_dmamem_alloc(dmat, &v_addr, flag, dmamap)) {
  printf("fwdma_malloc_size: failed(1)\n");
  return (((void*)0));
 }
 bus_dmamap_load(dmat, *dmamap, v_addr, size,
   fwdma_map_cb, bus_addr, 0);
 return (v_addr);
}
