
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bounce_zone {int total_bpages; } ;
typedef TYPE_2__* bus_dma_tag_t ;
struct TYPE_6__ {scalar_t__ maxsize; } ;
struct TYPE_7__ {int bounce_flags; TYPE_1__ common; struct bounce_zone* bounce_zone; } ;


 int BUS_DMA_MIN_ALLOC_COMP ;
 int ENOMEM ;
 int alloc_bounce_pages (TYPE_2__*,int) ;
 int alloc_bounce_zone (TYPE_2__*) ;
 int atop (scalar_t__) ;
 scalar_t__ ptoa (int) ;

__attribute__((used)) static int
bounce_bus_dma_zone_setup(bus_dma_tag_t dmat)
{
 struct bounce_zone *bz;
 int error;


 if ((error = alloc_bounce_zone(dmat)) != 0)
  return (error);
 bz = dmat->bounce_zone;

 if (ptoa(bz->total_bpages) < dmat->common.maxsize) {
  int pages;

  pages = atop(dmat->common.maxsize) - bz->total_bpages;


  if (alloc_bounce_pages(dmat, pages) < pages)
   return (ENOMEM);
 }

 dmat->bounce_flags |= BUS_DMA_MIN_ALLOC_COMP;

 return (0);
}
