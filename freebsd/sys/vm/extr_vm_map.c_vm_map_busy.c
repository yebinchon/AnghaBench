
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
struct TYPE_4__ {int busy; } ;


 int VM_MAP_ASSERT_LOCKED (TYPE_1__*) ;

void
vm_map_busy(vm_map_t map)
{

 VM_MAP_ASSERT_LOCKED(map);
 map->busy++;
}
