
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef TYPE_1__* vm_map_t ;
typedef int pmap_t ;
struct TYPE_4__ {int lock; int system_mtx; } ;


 int MTX_DEF ;
 int MTX_DUPOK ;
 int _vm_map_init (TYPE_1__*,int ,int ,int ) ;
 int mtx_init (int *,char*,int *,int) ;
 int sx_init (int *,char*) ;

void
vm_map_init(vm_map_t map, pmap_t pmap, vm_offset_t min, vm_offset_t max)
{

 _vm_map_init(map, pmap, min, max);
 mtx_init(&map->system_mtx, "system map", ((void*)0), MTX_DEF | MTX_DUPOK);
 sx_init(&map->lock, "user map");
}
