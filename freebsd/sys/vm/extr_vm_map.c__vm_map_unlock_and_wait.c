
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
struct TYPE_4__ {int root; int lock; int system_mtx; scalar_t__ system_map; } ;


 int PDROP ;
 int PVM ;
 int VM_MAP_UNLOCK_CONSISTENT (TYPE_1__*) ;
 int map_sleep_mtx ;
 int msleep (int *,int *,int,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock_flags_ (int *,int ,char const*,int) ;
 int sx_xunlock_ (int *,char const*,int) ;

int
_vm_map_unlock_and_wait(vm_map_t map, int timo, const char *file, int line)
{

 VM_MAP_UNLOCK_CONSISTENT(map);
 mtx_lock(&map_sleep_mtx);
 if (map->system_map)
  mtx_unlock_flags_(&map->system_mtx, 0, file, line);
 else
  sx_xunlock_(&map->lock, file, line);
 return (msleep(&map->root, &map_sleep_mtx, PDROP | PVM, "vmmaps",
     timo));
}
