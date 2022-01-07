
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_t ;
typedef int vm_map_entry_t ;


 int vm_map_unlock_read (int ) ;

void
vm_map_lookup_done(vm_map_t map, vm_map_entry_t entry)
{



 vm_map_unlock_read(map);
}
