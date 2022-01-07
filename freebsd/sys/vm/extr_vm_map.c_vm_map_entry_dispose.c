
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef int vm_map_entry_t ;
struct TYPE_3__ {scalar_t__ system_map; } ;


 int kmapentzone ;
 int mapentzone ;
 int uma_zfree (int ,int ) ;

__attribute__((used)) static void
vm_map_entry_dispose(vm_map_t map, vm_map_entry_t entry)
{
 uma_zfree(map->system_map ? kmapentzone : mapentzone, entry);
}
