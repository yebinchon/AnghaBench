
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef scalar_t__ vm_offset_t ;
typedef int vm_map_t ;
typedef TYPE_1__* vm_map_entry_t ;
typedef int boolean_t ;
struct TYPE_5__ {scalar_t__ start; int protection; scalar_t__ end; } ;


 int FALSE ;
 int TRUE ;
 TYPE_1__* vm_map_entry_succ (TYPE_1__*) ;
 int vm_map_lookup_entry (int ,scalar_t__,TYPE_1__**) ;

boolean_t
vm_map_check_protection(vm_map_t map, vm_offset_t start, vm_offset_t end,
   vm_prot_t protection)
{
 vm_map_entry_t entry;
 vm_map_entry_t tmp_entry;

 if (!vm_map_lookup_entry(map, start, &tmp_entry))
  return (FALSE);
 entry = tmp_entry;

 while (start < end) {



  if (start < entry->start)
   return (FALSE);



  if ((entry->protection & protection) != protection)
   return (FALSE);

  start = entry->end;
  entry = vm_map_entry_succ(entry);
 }
 return (TRUE);
}
