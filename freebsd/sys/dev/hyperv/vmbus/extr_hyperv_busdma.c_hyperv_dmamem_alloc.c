
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hyperv_dma {int hv_dtag; int hv_dmap; int hv_paddr; } ;
typedef int bus_size_t ;
typedef int bus_dma_tag_t ;
typedef int bus_addr_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int HYPERV_DMA_MASK ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_load (int ,int ,void*,int ,int ,int *,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_dmamem_free (int ,void*,int ) ;
 int hyperv_dma_map_paddr ;

void *
hyperv_dmamem_alloc(bus_dma_tag_t parent_dtag, bus_size_t alignment,
    bus_addr_t boundary, bus_size_t size, struct hyperv_dma *dma, int flags)
{
 void *ret;
 int error;

 error = bus_dma_tag_create(parent_dtag,
     alignment,
     boundary,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     size,
     1,
     size,
     0,
     ((void*)0),
     ((void*)0),
     &dma->hv_dtag);
 if (error)
  return ((void*)0);

 error = bus_dmamem_alloc(dma->hv_dtag, &ret,
     (flags & HYPERV_DMA_MASK) | BUS_DMA_COHERENT, &dma->hv_dmap);
 if (error) {
  bus_dma_tag_destroy(dma->hv_dtag);
  return ((void*)0);
 }

 error = bus_dmamap_load(dma->hv_dtag, dma->hv_dmap, ret, size,
     hyperv_dma_map_paddr, &dma->hv_paddr, BUS_DMA_NOWAIT);
 if (error) {
  bus_dmamem_free(dma->hv_dtag, ret, dma->hv_dmap);
  bus_dma_tag_destroy(dma->hv_dtag);
  return ((void*)0);
 }
 return ret;
}
