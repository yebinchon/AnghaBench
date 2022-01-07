
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pn_t ;


 scalar_t__ L3_SIZE ;
 int PAGE_SIZE ;
 int PTE_KERN ;
 int PTE_PPN0_S ;
 int VM_PAGE_TO_PHYS (int ) ;
 int kernel_pmap ;
 int pmap_invalidate_range (int ,int ,int ) ;
 int* pmap_l3 (int ,int ) ;
 int pmap_store (int*,int) ;

void
pmap_qenter(vm_offset_t sva, vm_page_t *ma, int count)
{
 pt_entry_t *l3, pa;
 vm_offset_t va;
 vm_page_t m;
 pt_entry_t entry;
 pn_t pn;
 int i;

 va = sva;
 for (i = 0; i < count; i++) {
  m = ma[i];
  pa = VM_PAGE_TO_PHYS(m);
  pn = (pa / PAGE_SIZE);
  l3 = pmap_l3(kernel_pmap, va);

  entry = PTE_KERN;
  entry |= (pn << PTE_PPN0_S);
  pmap_store(l3, entry);

  va += L3_SIZE;
 }
 pmap_invalidate_range(kernel_pmap, sva, va);
}
