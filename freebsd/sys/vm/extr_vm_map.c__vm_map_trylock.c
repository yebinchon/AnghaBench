
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
struct TYPE_3__ {int timestamp; int lock; int system_mtx; scalar_t__ system_map; } ;


 int mtx_trylock_flags_ (int *,int ,char const*,int) ;
 int sx_try_xlock_ (int *,char const*,int) ;

int
_vm_map_trylock(vm_map_t map, const char *file, int line)
{
 int error;

 error = map->system_map ?
     !mtx_trylock_flags_(&map->system_mtx, 0, file, line) :
     !sx_try_xlock_(&map->lock, file, line);
 if (error == 0)
  map->timestamp++;
 return (error == 0);
}
