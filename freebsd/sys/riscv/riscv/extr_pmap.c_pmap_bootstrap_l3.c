
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef size_t u_int ;
typedef int pt_entry_t ;
typedef int pn_t ;
typedef int pd_entry_t ;


 int KASSERT (int,char*) ;
 int L2_OFFSET ;
 scalar_t__ L2_SIZE ;
 size_t Ln_ENTRIES ;
 int PAGE_SIZE ;
 int PTE_PPN0_S ;
 int PTE_V ;
 int VM_MAX_KERNEL_ADDRESS ;
 int kernel_pmap ;
 int memset (void*,int ,int) ;
 int pmap_early_vtophys (int,int) ;
 int * pmap_l2 (int ,int) ;
 size_t pmap_l2_index (int) ;
 int pmap_store (int *,int) ;

__attribute__((used)) static vm_offset_t
pmap_bootstrap_l3(vm_offset_t l1pt, vm_offset_t va, vm_offset_t l3_start)
{
 vm_offset_t l3pt;
 pt_entry_t entry;
 pd_entry_t *l2;
 vm_paddr_t pa;
 u_int l2_slot;
 pn_t pn;

 KASSERT((va & L2_OFFSET) == 0, ("Invalid virtual address"));

 l2 = pmap_l2(kernel_pmap, va);
 l2 = (pd_entry_t *)((uintptr_t)l2 & ~(PAGE_SIZE - 1));
 l2_slot = pmap_l2_index(va);
 l3pt = l3_start;

 for (; va < VM_MAX_KERNEL_ADDRESS; l2_slot++, va += L2_SIZE) {
  KASSERT(l2_slot < Ln_ENTRIES, ("Invalid L2 index"));

  pa = pmap_early_vtophys(l1pt, l3pt);
  pn = (pa / PAGE_SIZE);
  entry = (PTE_V);
  entry |= (pn << PTE_PPN0_S);
  pmap_store(&l2[l2_slot], entry);
  l3pt += PAGE_SIZE;
 }



 memset((void *)l3_start, 0, l3pt - l3_start);

 return (l3pt);
}
