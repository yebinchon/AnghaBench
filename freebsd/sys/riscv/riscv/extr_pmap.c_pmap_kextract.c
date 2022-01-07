
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pd_entry_t ;


 int DMAP_MAX_ADDRESS ;
 int DMAP_MIN_ADDRESS ;
 int DMAP_TO_PHYS (int) ;
 int L2_OFFSET ;
 int L2_SHIFT ;
 int PAGE_MASK ;
 int PTE_PPN1_S ;
 int PTE_RX ;
 int PTE_TO_PHYS (int) ;
 int kernel_pmap ;
 int panic (char*) ;
 int * pmap_l2 (int ,int) ;
 int * pmap_l2_to_l3 (int *,int) ;
 int pmap_load (int *) ;

vm_paddr_t
pmap_kextract(vm_offset_t va)
{
 pd_entry_t *l2;
 pt_entry_t *l3;
 vm_paddr_t pa;

 if (va >= DMAP_MIN_ADDRESS && va < DMAP_MAX_ADDRESS) {
  pa = DMAP_TO_PHYS(va);
 } else {
  l2 = pmap_l2(kernel_pmap, va);
  if (l2 == ((void*)0))
   panic("pmap_kextract: No l2");
  if ((pmap_load(l2) & PTE_RX) != 0) {

   pa = (pmap_load(l2) >> PTE_PPN1_S) << L2_SHIFT;
   pa |= (va & L2_OFFSET);
   return (pa);
  }

  l3 = pmap_l2_to_l3(l2, va);
  if (l3 == ((void*)0))
   panic("pmap_kextract: No l3...");
  pa = PTE_TO_PHYS(pmap_load(l3));
  pa |= (va & PAGE_MASK);
 }
 return (pa);
}
