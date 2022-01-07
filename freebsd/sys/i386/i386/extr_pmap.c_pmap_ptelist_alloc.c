
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ pt_entry_t ;


 scalar_t__ PG_V ;
 int panic (char*) ;
 scalar_t__* vtopte (scalar_t__) ;

__attribute__((used)) static vm_offset_t
pmap_ptelist_alloc(vm_offset_t *head)
{
 pt_entry_t *pte;
 vm_offset_t va;

 va = *head;
 if (va == 0)
  panic("pmap_ptelist_alloc: exhausted ptelist KVA");
 pte = vtopte(va);
 *head = *pte;
 if (*head & PG_V)
  panic("pmap_ptelist_alloc: va with PG_V set!");
 *pte = 0;
 return (va);
}
