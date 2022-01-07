
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {int dmamap_load_task; int delayed_taskqueue; int delayed_maps; } ;
struct bus_dmamap_dmar {int locked; } ;


 int DMAR_LOCK (struct dmar_unit*) ;
 int DMAR_UNLOCK (struct dmar_unit*) ;
 int TAILQ_INSERT_TAIL (int *,struct bus_dmamap_dmar*,int ) ;
 int delay_link ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
dmar_bus_schedule_dmamap(struct dmar_unit *unit, struct bus_dmamap_dmar *map)
{

 map->locked = 0;
 DMAR_LOCK(unit);
 TAILQ_INSERT_TAIL(&unit->delayed_maps, map, delay_link);
 DMAR_UNLOCK(unit);
 taskqueue_enqueue(unit->delayed_taskqueue, &unit->dmamap_load_task);
}
