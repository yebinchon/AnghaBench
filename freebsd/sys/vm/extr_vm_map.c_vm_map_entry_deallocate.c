
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* vm_map_entry_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_5__ {int vm_object; } ;
struct TYPE_6__ {int eflags; TYPE_1__ object; } ;


 int MAP_ENTRY_IS_SUB_MAP ;
 int kmapentzone ;
 int mapentzone ;
 int uma_zfree (int ,TYPE_2__*) ;
 int vm_object_deallocate (int ) ;

__attribute__((used)) static void
vm_map_entry_deallocate(vm_map_entry_t entry, boolean_t system_map)
{

 if ((entry->eflags & MAP_ENTRY_IS_SUB_MAP) == 0)
  vm_object_deallocate(entry->object.vm_object);
 uma_zfree(system_map ? kmapentzone : mapentzone, entry);
}
