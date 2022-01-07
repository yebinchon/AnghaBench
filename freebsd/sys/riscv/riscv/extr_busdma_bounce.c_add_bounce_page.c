
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_offset_t ;
struct bounce_zone {int active_bpages; int reserved_bpages; int bounce_page_list; } ;
struct bounce_page {int vaddr; int busaddr; int dataoffs; int datacount; int datapage; int datavaddr; } ;
typedef int bus_size_t ;
typedef TYPE_2__* bus_dmamap_t ;
typedef TYPE_3__* bus_dma_tag_t ;
typedef int bus_addr_t ;
struct TYPE_6__ {int flags; } ;
struct TYPE_8__ {TYPE_1__ common; struct bounce_zone* bounce_zone; } ;
struct TYPE_7__ {int flags; scalar_t__ pagesneeded; scalar_t__ pagesreserved; int bpages; } ;


 int BUS_DMA_KEEP_PG_OFFSET ;
 int DMAMAP_COULD_BOUNCE ;
 int KASSERT (int,char*) ;
 int PAGE_MASK ;
 int PHYS_TO_VM_PAGE (int) ;
 struct bounce_page* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct bounce_page*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int bounce_lock ;
 int links ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*) ;

__attribute__((used)) static bus_addr_t
add_bounce_page(bus_dma_tag_t dmat, bus_dmamap_t map, vm_offset_t vaddr,
  bus_addr_t addr, bus_size_t size)
{
 struct bounce_zone *bz;
 struct bounce_page *bpage;

 KASSERT(dmat->bounce_zone != ((void*)0), ("no bounce zone in dma tag"));
 KASSERT((map->flags & DMAMAP_COULD_BOUNCE) != 0,
     ("add_bounce_page: bad map %p", map));

 bz = dmat->bounce_zone;
 if (map->pagesneeded == 0)
  panic("add_bounce_page: map doesn't need any pages");
 map->pagesneeded--;

 if (map->pagesreserved == 0)
  panic("add_bounce_page: map doesn't need any pages");
 map->pagesreserved--;

 mtx_lock(&bounce_lock);
 bpage = STAILQ_FIRST(&bz->bounce_page_list);
 if (bpage == ((void*)0))
  panic("add_bounce_page: free page list is empty");

 STAILQ_REMOVE_HEAD(&bz->bounce_page_list, links);
 bz->reserved_bpages--;
 bz->active_bpages++;
 mtx_unlock(&bounce_lock);

 if (dmat->common.flags & BUS_DMA_KEEP_PG_OFFSET) {

  bpage->vaddr |= addr & PAGE_MASK;
  bpage->busaddr |= addr & PAGE_MASK;
 }
 bpage->datavaddr = vaddr;
 bpage->datapage = PHYS_TO_VM_PAGE(addr);
 bpage->dataoffs = addr & PAGE_MASK;
 bpage->datacount = size;
 STAILQ_INSERT_TAIL(&(map->bpages), bpage, links);
 return (bpage->busaddr);
}
