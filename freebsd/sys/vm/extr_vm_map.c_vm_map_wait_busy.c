
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
struct TYPE_5__ {int timestamp; int lock; scalar_t__ busy; int system_mtx; scalar_t__ system_map; } ;


 int MAP_BUSY_WAKEUP ;
 int VM_MAP_ASSERT_LOCKED (TYPE_1__*) ;
 int msleep (scalar_t__*,int *,int ,char*,int ) ;
 int sx_sleep (scalar_t__*,int *,int ,char*,int ) ;
 int vm_map_modflags (TYPE_1__*,int ,int ) ;

void
vm_map_wait_busy(vm_map_t map)
{

 VM_MAP_ASSERT_LOCKED(map);
 while (map->busy) {
  vm_map_modflags(map, MAP_BUSY_WAKEUP, 0);
  if (map->system_map)
   msleep(&map->busy, &map->system_mtx, 0, "mbusy", 0);
  else
   sx_sleep(&map->busy, &map->lock, 0, "mbusy", 0);
 }
 map->timestamp++;
}
