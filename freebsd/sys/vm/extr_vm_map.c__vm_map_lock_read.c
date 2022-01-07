
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
struct TYPE_3__ {int lock; int system_mtx; scalar_t__ system_map; } ;


 int mtx_lock_flags_ (int *,int ,char const*,int) ;
 int sx_slock_ (int *,char const*,int) ;

void
_vm_map_lock_read(vm_map_t map, const char *file, int line)
{

 if (map->system_map)
  mtx_lock_flags_(&map->system_mtx, 0, file, line);
 else
  sx_slock_(&map->lock, file, line);
}
