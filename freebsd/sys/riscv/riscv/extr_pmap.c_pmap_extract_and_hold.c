
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int * vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;


 int * PHYS_TO_VM_PAGE (int ) ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PTE_TO_PHYS (int) ;
 int PTE_W ;
 int VM_PROT_WRITE ;
 int* pmap_l3 (int ,int ) ;
 int pmap_load (int*) ;
 int vm_page_wire_mapped (int *) ;

vm_page_t
pmap_extract_and_hold(pmap_t pmap, vm_offset_t va, vm_prot_t prot)
{
 pt_entry_t *l3p, l3;
 vm_paddr_t phys;
 vm_page_t m;

 m = ((void*)0);
 PMAP_LOCK(pmap);
 l3p = pmap_l3(pmap, va);
 if (l3p != ((void*)0) && (l3 = pmap_load(l3p)) != 0) {
  if ((l3 & PTE_W) != 0 || (prot & VM_PROT_WRITE) == 0) {
   phys = PTE_TO_PHYS(l3);
   m = PHYS_TO_VM_PAGE(phys);
   if (!vm_page_wire_mapped(m))
    m = ((void*)0);
  }
 }
 PMAP_UNLOCK(pmap);
 return (m);
}
