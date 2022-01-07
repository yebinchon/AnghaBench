
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef scalar_t__ pd_entry_t ;


 int NBPDR ;
 int NBSEG ;
 scalar_t__ PAGE_SIZE ;
 int PDRMASK ;
 int PHYS_TO_VM_PAGE (int ) ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PTE_D ;
 int PTE_MANAGED ;
 int PTE_RO ;
 int PTE_V ;
 int SEGMASK ;
 int TLBLO_PTE_TO_PA (int ) ;
 int VM_PROT_NONE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int pmap_invalidate_range (int ,int,int) ;
 int * pmap_pde_to_pte (scalar_t__*,int) ;
 scalar_t__* pmap_pdpe_to_pde (scalar_t__*,int) ;
 int pmap_remove (int ,int,int) ;
 scalar_t__* pmap_segmap (int ,int) ;
 int pte_clear (int *,int ) ;
 int pte_set (int *,int ) ;
 scalar_t__ pte_test (int *,int ) ;
 int vm_page_dirty (int ) ;

void
pmap_protect(pmap_t pmap, vm_offset_t sva, vm_offset_t eva, vm_prot_t prot)
{
 pt_entry_t pbits, *pte;
 pd_entry_t *pde, *pdpe;
 vm_offset_t va, va_next;
 vm_paddr_t pa;
 vm_page_t m;

 if ((prot & VM_PROT_READ) == VM_PROT_NONE) {
  pmap_remove(pmap, sva, eva);
  return;
 }
 if (prot & VM_PROT_WRITE)
  return;

 PMAP_LOCK(pmap);
 for (; sva < eva; sva = va_next) {
  pdpe = pmap_segmap(pmap, sva);
  va_next = (sva + NBPDR) & ~PDRMASK;
  if (va_next < sva)
   va_next = eva;

  pde = pmap_pdpe_to_pde(pdpe, sva);
  if (*pde == ((void*)0))
   continue;






  if (va_next > eva)
   va_next = eva;

  va = va_next;
  for (pte = pmap_pde_to_pte(pde, sva); sva != va_next; pte++,
      sva += PAGE_SIZE) {
   pbits = *pte;
   if (!pte_test(&pbits, PTE_V) || pte_test(&pbits,
       PTE_RO)) {
    if (va != va_next) {
     pmap_invalidate_range(pmap, va, sva);
     va = va_next;
    }
    continue;
   }
   pte_set(&pbits, PTE_RO);
   if (pte_test(&pbits, PTE_D)) {
    pte_clear(&pbits, PTE_D);
    if (pte_test(&pbits, PTE_MANAGED)) {
     pa = TLBLO_PTE_TO_PA(pbits);
     m = PHYS_TO_VM_PAGE(pa);
     vm_page_dirty(m);
    }
    if (va == va_next)
     va = sva;
   } else {





    if (va != va_next) {
     pmap_invalidate_range(pmap, va, sva);
     va = va_next;
    }
   }
   *pte = pbits;
  }
  if (va != va_next)
   pmap_invalidate_range(pmap, va, sva);
 }
 PMAP_UNLOCK(pmap);
}
