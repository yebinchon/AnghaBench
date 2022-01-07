
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef int vm_pindex_t ;
typedef scalar_t__ vm_offset_t ;
typedef int * vm_object_t ;
typedef TYPE_2__* vm_map_t ;
typedef TYPE_3__* vm_map_entry_t ;
typedef int boolean_t ;
struct TYPE_8__ {int * vm_object; } ;
struct TYPE_10__ {int eflags; int protection; scalar_t__ wired_count; TYPE_1__ object; scalar_t__ offset; scalar_t__ start; } ;
struct TYPE_9__ {int system_map; } ;


 int KERN_FAILURE ;
 int KERN_INVALID_ADDRESS ;
 int KERN_PROTECTION_FAILURE ;
 int KERN_SUCCESS ;
 int MAP_ENTRY_IS_SUB_MAP ;
 int MAP_ENTRY_NEEDS_COPY ;
 int OFF_TO_IDX (scalar_t__) ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int vm_map_lookup_entry (TYPE_2__*,scalar_t__,TYPE_3__**) ;

int
vm_map_lookup_locked(vm_map_t *var_map,
       vm_offset_t vaddr,
       vm_prot_t fault_typea,
       vm_map_entry_t *out_entry,
       vm_object_t *object,
       vm_pindex_t *pindex,
       vm_prot_t *out_prot,
       boolean_t *wired)
{
 vm_map_entry_t entry;
 vm_map_t map = *var_map;
 vm_prot_t prot;
 vm_prot_t fault_type = fault_typea;




 if (!vm_map_lookup_entry(map, vaddr, out_entry))
  return (KERN_INVALID_ADDRESS);

 entry = *out_entry;




 if (entry->eflags & MAP_ENTRY_IS_SUB_MAP)
  return (KERN_FAILURE);




 prot = entry->protection;
 fault_type &= VM_PROT_READ | VM_PROT_WRITE | VM_PROT_EXECUTE;
 if ((fault_type & prot) != fault_type)
  return (KERN_PROTECTION_FAILURE);





 *wired = (entry->wired_count != 0);
 if (*wired)
  fault_type = entry->protection;

 if (entry->eflags & MAP_ENTRY_NEEDS_COPY) {



  if (fault_type & VM_PROT_WRITE)
   return (KERN_FAILURE);




  prot &= ~VM_PROT_WRITE;
 }




 if (entry->object.vm_object == ((void*)0) && !map->system_map)
  return (KERN_FAILURE);





 *pindex = OFF_TO_IDX((vaddr - entry->start) + entry->offset);
 *object = entry->object.vm_object;

 *out_prot = prot;
 return (KERN_SUCCESS);
}
