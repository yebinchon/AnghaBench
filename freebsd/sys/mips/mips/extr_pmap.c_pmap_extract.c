
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;


 int PAGE_MASK ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int TLBLO_PTE_TO_PA (int ) ;
 int * pmap_pte (int ,int) ;

vm_paddr_t
pmap_extract(pmap_t pmap, vm_offset_t va)
{
 pt_entry_t *pte;
 vm_offset_t retval = 0;

 PMAP_LOCK(pmap);
 pte = pmap_pte(pmap, va);
 if (pte) {
  retval = TLBLO_PTE_TO_PA(*pte) | (va & PAGE_MASK);
 }
 PMAP_UNLOCK(pmap);
 return (retval);
}
