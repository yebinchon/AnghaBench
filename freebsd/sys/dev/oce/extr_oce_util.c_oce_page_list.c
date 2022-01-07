
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct phys_addr {int dummy; } ;
struct _oce_dmamap_paddr_table {int max_entries; scalar_t__ num_entries; struct phys_addr* paddrs; } ;
struct TYPE_4__ {int ptr; int map; int tag; } ;
struct TYPE_5__ {int item_size; int num_items; TYPE_1__ dma; } ;
typedef TYPE_2__ oce_ring_buffer_t ;


 int BUS_DMA_NOWAIT ;
 int bus_dmamap_load (int ,int ,int ,int,int ,struct _oce_dmamap_paddr_table*,int ) ;
 int oce_dma_map_ring ;

uint32_t
oce_page_list(oce_ring_buffer_t *ring, struct phys_addr *pa_list)
{
 struct _oce_dmamap_paddr_table dpt;

 dpt.max_entries = 8;
 dpt.num_entries = 0;
 dpt.paddrs = pa_list;

 bus_dmamap_load(ring->dma.tag,
   ring->dma.map,
   ring->dma.ptr,
   ring->item_size * ring->num_items,
   oce_dma_map_ring, &dpt, BUS_DMA_NOWAIT);

 return dpt.num_entries;
}
