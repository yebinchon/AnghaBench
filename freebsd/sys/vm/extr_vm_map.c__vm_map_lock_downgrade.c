
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
struct TYPE_4__ {int lock; int system_mtx; scalar_t__ system_map; } ;


 int MA_OWNED ;
 int VM_MAP_UNLOCK_CONSISTENT (TYPE_1__*) ;
 int mtx_assert_ (int *,int ,char const*,int) ;
 int sx_downgrade_ (int *,char const*,int) ;

void
_vm_map_lock_downgrade(vm_map_t map, const char *file, int line)
{

 if (map->system_map) {
  mtx_assert_(&map->system_mtx, MA_OWNED, file, line);
 } else {
  VM_MAP_UNLOCK_CONSISTENT(map);
  sx_downgrade_(&map->lock, file, line);
 }
}
