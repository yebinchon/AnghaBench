
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;


 int BUS_DMA_NOWAIT ;
 int EINPROGRESS ;
 int ENOMEM ;
 int STAILQ_INSERT_TAIL (int *,int ,int ) ;
 int bounce_lock ;
 int bounce_map_waitinglist ;
 int links ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ reserve_bounce_pages (int ,int ,int) ;

__attribute__((used)) static int
_bus_dmamap_reserve_pages(bus_dma_tag_t dmat, bus_dmamap_t map, int flags)
{


 mtx_lock(&bounce_lock);
 if (flags & BUS_DMA_NOWAIT) {
  if (reserve_bounce_pages(dmat, map, 0) != 0) {
   mtx_unlock(&bounce_lock);
   return (ENOMEM);
  }
 } else {
  if (reserve_bounce_pages(dmat, map, 1) != 0) {

   STAILQ_INSERT_TAIL(&bounce_map_waitinglist,
       map, links);
   mtx_unlock(&bounce_lock);
   return (EINPROGRESS);
  }
 }
 mtx_unlock(&bounce_lock);

 return (0);
}
