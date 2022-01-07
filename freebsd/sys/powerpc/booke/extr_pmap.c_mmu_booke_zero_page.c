
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef int mmu_t ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ PHYS_TO_DMAP (int ) ;
 int VM_PAGE_TO_PHYS (int ) ;
 scalar_t__ cacheline_size ;
 int mmu_booke_kenter (int ,scalar_t__,int ) ;
 int mmu_booke_kremove (int ,scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int zero_page_mutex ;
 scalar_t__ zero_page_va ;

__attribute__((used)) static void
mmu_booke_zero_page(mmu_t mmu, vm_page_t m)
{
 vm_offset_t off, va;







 va = zero_page_va;
 mtx_lock(&zero_page_mutex);

 mmu_booke_kenter(mmu, va, VM_PAGE_TO_PHYS(m));

 for (off = 0; off < PAGE_SIZE; off += cacheline_size)
  __asm __volatile("dcbz 0,%0" :: "r"(va + off));

 mmu_booke_kremove(mmu, va);

 mtx_unlock(&zero_page_mutex);

}
