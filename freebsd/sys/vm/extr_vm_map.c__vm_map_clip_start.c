
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int vm_map_t ;
typedef TYPE_2__* vm_map_entry_t ;
struct TYPE_8__ {int vm_object; } ;
struct TYPE_9__ {scalar_t__ end; scalar_t__ start; int eflags; TYPE_1__ object; int * cred; int offset; } ;


 int KASSERT (int,char*) ;
 int MAP_ENTRY_IS_SUB_MAP ;
 int VM_MAP_ASSERT_LOCKED (int ) ;
 int crhold (int *) ;
 int vm_map_entry_charge_object (int ,TYPE_2__*) ;
 TYPE_2__* vm_map_entry_create (int ) ;
 int vm_map_entry_link (int ,TYPE_2__*) ;
 int vm_map_entry_set_vnode_text (TYPE_2__*,int) ;
 int vm_object_reference (int ) ;

__attribute__((used)) static void
_vm_map_clip_start(vm_map_t map, vm_map_entry_t entry, vm_offset_t start)
{
 vm_map_entry_t new_entry;

 VM_MAP_ASSERT_LOCKED(map);
 KASSERT(entry->end > start && entry->start < start,
     ("_vm_map_clip_start: invalid clip of entry %p", entry));





 vm_map_entry_charge_object(map, entry);


 new_entry = vm_map_entry_create(map);
 *new_entry = *entry;





 new_entry->end = start;
 entry->offset += (start - entry->start);
 entry->start = start;
 if (new_entry->cred != ((void*)0))
  crhold(entry->cred);

 vm_map_entry_link(map, new_entry);

 if ((entry->eflags & MAP_ENTRY_IS_SUB_MAP) == 0) {
  vm_object_reference(new_entry->object.vm_object);
  vm_map_entry_set_vnode_text(new_entry, 1);







 }
}
