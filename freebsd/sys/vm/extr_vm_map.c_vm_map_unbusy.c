
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
struct TYPE_5__ {scalar_t__ busy; int flags; } ;


 int KASSERT (scalar_t__,char*) ;
 int MAP_BUSY_WAKEUP ;
 int VM_MAP_ASSERT_LOCKED (TYPE_1__*) ;
 int vm_map_modflags (TYPE_1__*,int ,int) ;
 int wakeup (scalar_t__*) ;

void
vm_map_unbusy(vm_map_t map)
{

 VM_MAP_ASSERT_LOCKED(map);
 KASSERT(map->busy, ("vm_map_unbusy: not busy"));
 if (--map->busy == 0 && (map->flags & MAP_BUSY_WAKEUP)) {
  vm_map_modflags(map, 0, MAP_BUSY_WAKEUP);
  wakeup(&map->busy);
 }
}
