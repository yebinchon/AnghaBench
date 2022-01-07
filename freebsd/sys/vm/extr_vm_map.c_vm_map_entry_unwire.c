
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef TYPE_2__* vm_map_t ;
typedef TYPE_3__* vm_map_entry_t ;
struct TYPE_7__ {int vm_object; } ;
struct TYPE_9__ {scalar_t__ wired_count; int eflags; int offset; TYPE_1__ object; scalar_t__ end; scalar_t__ start; } ;
struct TYPE_8__ {int pmap; } ;


 int KASSERT (int,char*) ;
 int MAP_ENTRY_USER_WIRED ;
 int PQ_ACTIVE ;
 int VM_MAP_ASSERT_LOCKED (TYPE_2__*) ;
 int atop (scalar_t__) ;
 int pmap_unwire (int ,scalar_t__,scalar_t__) ;
 int vm_map_wire_user_count_sub (int ) ;
 int vm_object_unwire (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void
vm_map_entry_unwire(vm_map_t map, vm_map_entry_t entry)
{
 vm_size_t size;

 VM_MAP_ASSERT_LOCKED(map);
 KASSERT(entry->wired_count > 0,
     ("vm_map_entry_unwire: entry %p isn't wired", entry));

 size = entry->end - entry->start;
 if ((entry->eflags & MAP_ENTRY_USER_WIRED) != 0)
  vm_map_wire_user_count_sub(atop(size));
 pmap_unwire(map->pmap, entry->start, entry->end);
 vm_object_unwire(entry->object.vm_object, entry->offset, size,
     PQ_ACTIVE);
 entry->wired_count = 0;
}
