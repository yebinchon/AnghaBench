
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bus_dmamap {int dmat; } ;
struct bounce_zone {int total_deferred; int active_bpages; int free_bpages; int bounce_page_list; } ;
struct bounce_page {int busaddr; int vaddr; scalar_t__ datacount; scalar_t__ datavaddr; } ;
typedef TYPE_2__* bus_dma_tag_t ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ common; struct bounce_zone* bounce_zone; } ;


 int BUS_DMA_KEEP_PG_OFFSET ;
 int PAGE_MASK ;
 struct bus_dmamap* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_HEAD (int *,struct bounce_page*,int ) ;
 int STAILQ_INSERT_TAIL (int *,struct bus_dmamap*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int bounce_lock ;
 int bounce_map_callbacklist ;
 int bounce_map_waitinglist ;
 int busdma_swi_pending ;
 int links ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ reserve_bounce_pages (int ,struct bus_dmamap*,int) ;
 int swi_sched (int ,int ) ;
 int vm_ih ;

__attribute__((used)) static void
free_bounce_page(bus_dma_tag_t dmat, struct bounce_page *bpage)
{
 struct bus_dmamap *map;
 struct bounce_zone *bz;

 bz = dmat->bounce_zone;
 bpage->datavaddr = 0;
 bpage->datacount = 0;
 if (dmat->common.flags & BUS_DMA_KEEP_PG_OFFSET) {





  bpage->vaddr &= ~PAGE_MASK;
  bpage->busaddr &= ~PAGE_MASK;
 }

 mtx_lock(&bounce_lock);
 STAILQ_INSERT_HEAD(&bz->bounce_page_list, bpage, links);
 bz->free_bpages++;
 bz->active_bpages--;
 if ((map = STAILQ_FIRST(&bounce_map_waitinglist)) != ((void*)0)) {
  if (reserve_bounce_pages(map->dmat, map, 1) == 0) {
   STAILQ_REMOVE_HEAD(&bounce_map_waitinglist, links);
   STAILQ_INSERT_TAIL(&bounce_map_callbacklist,
       map, links);
   busdma_swi_pending = 1;
   bz->total_deferred++;
   swi_sched(vm_ih, 0);
  }
 }
 mtx_unlock(&bounce_lock);
}
