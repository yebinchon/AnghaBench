
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct ena_adapter {int dma_width; } ;
struct TYPE_3__ {scalar_t__ paddr; int * vaddr; int * tag; int map; } ;
typedef TYPE_1__ ena_mem_handle_t ;
typedef int device_t ;
typedef int bus_size_t ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_COHERENT ;
 int BUS_DMA_ZERO ;
 scalar_t__ BUS_SPACE_MAXADDR ;
 int ENA_ALERT ;
 scalar_t__ ENA_DMA_BIT_MASK (int ) ;
 int PAGE_SIZE ;
 int bus_dma_tag_create (int ,int,int ,scalar_t__,scalar_t__,int *,int *,int,int,int,int ,int *,int *,int **) ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_load (int *,int ,int *,int,int ,scalar_t__*,int) ;
 int bus_dmamap_sync (int *,int ,int) ;
 int bus_dmamem_alloc (int *,void**,int,int *) ;
 int bus_dmamem_free (int *,int *,int ) ;
 int bus_get_dma_tag (int ) ;
 struct ena_adapter* device_get_softc (int ) ;
 int ena_dmamap_callback ;
 int ena_trace (int ,char*,int,...) ;
 scalar_t__ unlikely (int) ;

int
ena_dma_alloc(device_t dmadev, bus_size_t size,
    ena_mem_handle_t *dma , int mapflags)
{
 struct ena_adapter* adapter = device_get_softc(dmadev);
 uint32_t maxsize;
 uint64_t dma_space_addr;
 int error;

 maxsize = ((size - 1) / PAGE_SIZE + 1) * PAGE_SIZE;

 dma_space_addr = ENA_DMA_BIT_MASK(adapter->dma_width);
 if (unlikely(dma_space_addr == 0))
  dma_space_addr = BUS_SPACE_MAXADDR;

 error = bus_dma_tag_create(bus_get_dma_tag(dmadev),
     8, 0,
     dma_space_addr,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     maxsize,
     1,
     maxsize,
     BUS_DMA_ALLOCNOW,
     ((void*)0),
     ((void*)0),
     &dma->tag);
 if (unlikely(error != 0)) {
  ena_trace(ENA_ALERT, "bus_dma_tag_create failed: %d\n", error);
  goto fail_tag;
 }

 error = bus_dmamem_alloc(dma->tag, (void**) &dma->vaddr,
     BUS_DMA_COHERENT | BUS_DMA_ZERO, &dma->map);
 if (unlikely(error != 0)) {
  ena_trace(ENA_ALERT, "bus_dmamem_alloc(%ju) failed: %d\n",
      (uintmax_t)size, error);
  goto fail_map_create;
 }

 dma->paddr = 0;
 error = bus_dmamap_load(dma->tag, dma->map, dma->vaddr,
     size, ena_dmamap_callback, &dma->paddr, mapflags);
 if (unlikely((error != 0) || (dma->paddr == 0))) {
  ena_trace(ENA_ALERT, ": bus_dmamap_load failed: %d\n", error);
  goto fail_map_load;
 }

 bus_dmamap_sync(dma->tag, dma->map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 return (0);

fail_map_load:
 bus_dmamem_free(dma->tag, dma->vaddr, dma->map);
fail_map_create:
 bus_dma_tag_destroy(dma->tag);
fail_tag:
 dma->tag = ((void*)0);
 dma->vaddr = ((void*)0);
 dma->paddr = 0;

 return (error);
}
