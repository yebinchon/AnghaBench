
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef int mmu_t ;
typedef int caddr_t ;


 int PAGE_SIZE ;
 scalar_t__ PHYS_TO_DMAP (int ) ;
 int VM_PAGE_TO_PHYS (int ) ;
 scalar_t__ copy_page_dst_va ;
 int copy_page_mutex ;
 scalar_t__ copy_page_src_va ;
 int memcpy (int ,int ,int ) ;
 int mmu_booke_kenter (int ,scalar_t__,int ) ;
 int mmu_booke_kremove (int ,scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
mmu_booke_copy_page(mmu_t mmu, vm_page_t sm, vm_page_t dm)
{
 vm_offset_t sva, dva;






 sva = copy_page_src_va;
 dva = copy_page_dst_va;

 mtx_lock(&copy_page_mutex);
 mmu_booke_kenter(mmu, sva, VM_PAGE_TO_PHYS(sm));
 mmu_booke_kenter(mmu, dva, VM_PAGE_TO_PHYS(dm));

 memcpy((caddr_t)dva, (caddr_t)sva, PAGE_SIZE);

 mmu_booke_kremove(mmu, dva);
 mmu_booke_kremove(mmu, sva);
 mtx_unlock(&copy_page_mutex);

}
