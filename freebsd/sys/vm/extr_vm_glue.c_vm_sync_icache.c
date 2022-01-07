
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef TYPE_1__* vm_map_t ;
struct TYPE_3__ {int pmap; } ;


 int pmap_sync_icache (int ,int ,int ) ;

void
vm_sync_icache(vm_map_t map, vm_offset_t va, vm_offset_t sz)
{

 pmap_sync_icache(map->pmap, va, sz);
}
