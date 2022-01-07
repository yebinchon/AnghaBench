
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_map_t ;
typedef TYPE_2__* vm_map_entry_t ;
struct TYPE_5__ {int * vm_object; } ;
struct TYPE_6__ {int * cred; TYPE_1__ object; } ;


 int crfree (int *) ;
 int vm_map_entry_dispose (int ,TYPE_2__*) ;
 int vm_object_deallocate (int *) ;

__attribute__((used)) static void
vm_map_merged_neighbor_dispose(vm_map_t map, vm_map_entry_t entry)
{
 if (entry->object.vm_object != ((void*)0))
  vm_object_deallocate(entry->object.vm_object);
 if (entry->cred != ((void*)0))
  crfree(entry->cred);
 vm_map_entry_dispose(map, entry);
}
