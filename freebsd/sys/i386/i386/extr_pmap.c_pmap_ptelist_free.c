
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pt_entry_t ;


 int PG_V ;
 int panic (char*) ;
 int* vtopte (int) ;

__attribute__((used)) static void
pmap_ptelist_free(vm_offset_t *head, vm_offset_t va)
{
 pt_entry_t *pte;

 if (va & PG_V)
  panic("pmap_ptelist_free: freeing va with PG_V set!");
 pte = vtopte(va);
 *pte = *head;
 *head = va;
}
