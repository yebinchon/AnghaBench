
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef int * vm_page_t ;
typedef int vm_offset_t ;
struct TYPE_2__ {int prot; int pa; } ;
struct pvo_entry {TYPE_1__ pvo_pte; } ;
typedef int pmap_t ;
typedef int mmu_t ;


 int ADDR_POFF ;
 int LPTE_RPGN ;
 int * PHYS_TO_VM_PAGE (int) ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 struct pvo_entry* moea64_pvo_find_va (int ,int) ;
 int vm_page_wire_mapped (int *) ;

vm_page_t
moea64_extract_and_hold(mmu_t mmu, pmap_t pmap, vm_offset_t va, vm_prot_t prot)
{
 struct pvo_entry *pvo;
 vm_page_t m;

 m = ((void*)0);
 PMAP_LOCK(pmap);
 pvo = moea64_pvo_find_va(pmap, va & ~ADDR_POFF);
 if (pvo != ((void*)0) && (pvo->pvo_pte.prot & prot) == prot) {
  m = PHYS_TO_VM_PAGE(pvo->pvo_pte.pa & LPTE_RPGN);
  if (!vm_page_wire_mapped(m))
   m = ((void*)0);
 }
 PMAP_UNLOCK(pmap);
 return (m);
}
