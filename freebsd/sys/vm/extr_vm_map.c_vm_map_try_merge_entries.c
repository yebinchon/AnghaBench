
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int vm_map_t ;
typedef TYPE_1__* vm_map_entry_t ;
struct TYPE_8__ {int eflags; } ;


 int MAP_ENTRY_NOMERGE_MASK ;
 int UNLINK_MERGE_NEXT ;
 int VM_MAP_ASSERT_LOCKED (int ) ;
 int vm_map_entry_unlink (int ,TYPE_1__*,int ) ;
 scalar_t__ vm_map_mergeable_neighbors (TYPE_1__*,TYPE_1__*) ;
 int vm_map_merged_neighbor_dispose (int ,TYPE_1__*) ;

void
vm_map_try_merge_entries(vm_map_t map, vm_map_entry_t prev, vm_map_entry_t entry)
{

 VM_MAP_ASSERT_LOCKED(map);
 if ((entry->eflags & MAP_ENTRY_NOMERGE_MASK) == 0 &&
     vm_map_mergeable_neighbors(prev, entry)) {
  vm_map_entry_unlink(map, prev, UNLINK_MERGE_NEXT);
  vm_map_merged_neighbor_dispose(map, prev);
 }
}
