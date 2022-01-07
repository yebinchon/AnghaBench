
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;


 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PTE_D ;
 int PTE_MANAGED ;
 int PTE_RO ;
 int PTE_V ;
 int panic (char*) ;
 int * pmap_pte (int ,int ) ;
 int pte_set (int *,int ) ;
 scalar_t__ pte_test (int *,int ) ;
 int tlb_update (int ,int ,int ) ;

int
pmap_emulate_modified(pmap_t pmap, vm_offset_t va)
{
 pt_entry_t *pte;

 PMAP_LOCK(pmap);
 pte = pmap_pte(pmap, va);
 if (pte == ((void*)0))
  panic("pmap_emulate_modified: can't find PTE");
 if (!pte_test(pte, PTE_V) || pte_test(pte, PTE_D))
  panic("pmap_emulate_modified: invalid pte");

 if (pte_test(pte, PTE_RO)) {
  PMAP_UNLOCK(pmap);
  return (1);
 }
 pte_set(pte, PTE_D);
 tlb_update(pmap, va, *pte);
 if (!pte_test(pte, PTE_MANAGED))
  panic("pmap_emulate_modified: unmanaged page");
 PMAP_UNLOCK(pmap);
 return (0);
}
