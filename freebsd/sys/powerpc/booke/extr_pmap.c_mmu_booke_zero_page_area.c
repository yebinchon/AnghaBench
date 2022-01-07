
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef int mmu_t ;
typedef scalar_t__ caddr_t ;


 scalar_t__ PHYS_TO_DMAP (int ) ;
 int VM_PAGE_TO_PHYS (int ) ;
 int bzero (scalar_t__,int) ;
 int mmu_booke_kenter (int ,scalar_t__,int ) ;
 int mmu_booke_kremove (int ,scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int zero_page_mutex ;
 scalar_t__ zero_page_va ;

__attribute__((used)) static void
mmu_booke_zero_page_area(mmu_t mmu, vm_page_t m, int off, int size)
{
 vm_offset_t va;







 mtx_lock(&zero_page_mutex);
 va = zero_page_va;

 mmu_booke_kenter(mmu, va, VM_PAGE_TO_PHYS(m));
 bzero((caddr_t)va + off, size);
 mmu_booke_kremove(mmu, va);

 mtx_unlock(&zero_page_mutex);

}
