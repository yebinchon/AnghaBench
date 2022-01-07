
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bus_dmamap_dmar {int locked; int cansleep; } ;
struct TYPE_2__ {int lockfuncarg; int (* lockfunc ) (int ,int ) ;} ;
struct bus_dma_tag_dmar {int * segments; TYPE_1__ common; } ;
typedef scalar_t__ bus_dmamap_t ;
typedef scalar_t__ bus_dma_tag_t ;
typedef int bus_dma_segment_t ;


 int BUS_DMA_LOCK ;
 int KASSERT (int ,char*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static bus_dma_segment_t *
dmar_bus_dmamap_complete(bus_dma_tag_t dmat, bus_dmamap_t map1,
    bus_dma_segment_t *segs, int nsegs, int error)
{
 struct bus_dma_tag_dmar *tag;
 struct bus_dmamap_dmar *map;

 tag = (struct bus_dma_tag_dmar *)dmat;
 map = (struct bus_dmamap_dmar *)map1;

 if (!map->locked) {
  KASSERT(map->cansleep,
      ("map not locked and not sleepable context %p", map));





  (tag->common.lockfunc)(tag->common.lockfuncarg, BUS_DMA_LOCK);
  map->locked = 1;
 }

 if (segs == ((void*)0))
  segs = tag->segments;
 return (segs);
}
