
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
struct TYPE_3__ {int lock; int system_mtx; scalar_t__ system_map; } ;


 int mtx_owned (int *) ;
 int sx_xlocked (int *) ;

int
vm_map_locked(vm_map_t map)
{

 if (map->system_map)
  return (mtx_owned(&map->system_mtx));
 else
  return (sx_xlocked(&map->lock));
}
