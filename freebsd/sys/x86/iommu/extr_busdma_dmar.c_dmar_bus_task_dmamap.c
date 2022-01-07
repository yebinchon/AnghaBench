
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmar_unit {int delayed_maps; } ;
struct bus_dmamap_dmar {int cansleep; int locked; int callback_arg; int callback; int mem; struct bus_dma_tag_dmar* tag; } ;
struct TYPE_2__ {int lockfuncarg; int (* lockfunc ) (int ,int ) ;} ;
struct bus_dma_tag_dmar {TYPE_1__ common; } ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;


 int BUS_DMA_UNLOCK ;
 int BUS_DMA_WAITOK ;
 int DMAR_LOCK (struct dmar_unit*) ;
 int DMAR_UNLOCK (struct dmar_unit*) ;
 struct bus_dmamap_dmar* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct bus_dmamap_dmar*,int ) ;
 int bus_dmamap_load_mem (int ,int ,int *,int ,int ,int ) ;
 int delay_link ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
dmar_bus_task_dmamap(void *arg, int pending)
{
 struct bus_dma_tag_dmar *tag;
 struct bus_dmamap_dmar *map;
 struct dmar_unit *unit;

 unit = arg;
 DMAR_LOCK(unit);
 while ((map = TAILQ_FIRST(&unit->delayed_maps)) != ((void*)0)) {
  TAILQ_REMOVE(&unit->delayed_maps, map, delay_link);
  DMAR_UNLOCK(unit);
  tag = map->tag;
  map->cansleep = 1;
  map->locked = 0;
  bus_dmamap_load_mem((bus_dma_tag_t)tag, (bus_dmamap_t)map,
      &map->mem, map->callback, map->callback_arg,
      BUS_DMA_WAITOK);
  map->cansleep = 0;
  if (map->locked) {
   (tag->common.lockfunc)(tag->common.lockfuncarg,
       BUS_DMA_UNLOCK);
  } else
   map->locked = 1;
  map->cansleep = 0;
  DMAR_LOCK(unit);
 }
 DMAR_UNLOCK(unit);
}
