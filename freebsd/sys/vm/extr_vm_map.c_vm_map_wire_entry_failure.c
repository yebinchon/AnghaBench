
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef TYPE_2__* vm_map_t ;
typedef TYPE_3__* vm_map_entry_t ;
struct TYPE_7__ {int vm_object; } ;
struct TYPE_9__ {int eflags; int wired_count; scalar_t__ start; int offset; TYPE_1__ object; scalar_t__ end; } ;
struct TYPE_8__ {int pmap; } ;


 int KASSERT (int,char*) ;
 int MAP_ENTRY_IN_TRANSITION ;
 int PQ_ACTIVE ;
 int VM_MAP_ASSERT_LOCKED (TYPE_2__*) ;
 int pmap_unwire (int ,scalar_t__,scalar_t__) ;
 int vm_object_unwire (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void
vm_map_wire_entry_failure(vm_map_t map, vm_map_entry_t entry,
    vm_offset_t failed_addr)
{

 VM_MAP_ASSERT_LOCKED(map);
 KASSERT((entry->eflags & MAP_ENTRY_IN_TRANSITION) != 0 &&
     entry->wired_count == 1,
     ("vm_map_wire_entry_failure: entry %p isn't being wired", entry));
 KASSERT(failed_addr < entry->end,
     ("vm_map_wire_entry_failure: entry %p was fully wired", entry));





 if (failed_addr > entry->start) {
  pmap_unwire(map->pmap, entry->start, failed_addr);
  vm_object_unwire(entry->object.vm_object, entry->offset,
      failed_addr - entry->start, PQ_ACTIVE);
 }





 entry->wired_count = -1;
}
