
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef int * vm_page_t ;
typedef int vm_offset_t ;
struct TYPE_3__ {int pte_hi; int pte_lo; } ;
struct TYPE_4__ {TYPE_1__ pte; } ;
struct pvo_entry {TYPE_2__ pvo_pte; } ;
typedef int pmap_t ;
typedef int mmu_t ;


 int ADDR_POFF ;
 int * PHYS_TO_VM_PAGE (int) ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PTE_PP ;
 int PTE_RPGN ;
 int PTE_RW ;
 int PTE_VALID ;
 int VM_PROT_WRITE ;
 struct pvo_entry* moea_pvo_find_va (int ,int,int *) ;
 int vm_page_wire_mapped (int *) ;

vm_page_t
moea_extract_and_hold(mmu_t mmu, pmap_t pmap, vm_offset_t va, vm_prot_t prot)
{
 struct pvo_entry *pvo;
 vm_page_t m;

 m = ((void*)0);
 PMAP_LOCK(pmap);
 pvo = moea_pvo_find_va(pmap, va & ~ADDR_POFF, ((void*)0));
 if (pvo != ((void*)0) && (pvo->pvo_pte.pte.pte_hi & PTE_VALID) &&
     ((pvo->pvo_pte.pte.pte_lo & PTE_PP) == PTE_RW ||
      (prot & VM_PROT_WRITE) == 0)) {
  m = PHYS_TO_VM_PAGE(pvo->pvo_pte.pte.pte_lo & PTE_RPGN);
  if (!vm_page_wire_mapped(m))
   m = ((void*)0);
 }
 PMAP_UNLOCK(pmap);
 return (m);
}
