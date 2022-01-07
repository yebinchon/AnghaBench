
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef scalar_t__ pmap_t ;
typedef int mmu_t ;


 int ADDR_POFF ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 int __syncicache (void*,int ) ;
 scalar_t__ hw_direct_map ;
 scalar_t__ kernel_pmap ;
 int moea64_scratchpage_mtx ;
 scalar_t__* moea64_scratchpage_va ;
 int moea64_set_scratchpage_pa (int ,int,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pmap_bootstrapped ;

__attribute__((used)) static void
moea64_syncicache(mmu_t mmu, pmap_t pmap, vm_offset_t va, vm_paddr_t pa,
    vm_size_t sz)
{
 if (!pmap_bootstrapped) {




  __syncicache((void *)(uintptr_t)pa, sz);
 } else if (pmap == kernel_pmap) {
  __syncicache((void *)va, sz);
 } else if (hw_direct_map) {
  __syncicache((void *)(uintptr_t)PHYS_TO_DMAP(pa), sz);
 } else {


  mtx_lock(&moea64_scratchpage_mtx);

  moea64_set_scratchpage_pa(mmu, 1, pa & ~ADDR_POFF);
  __syncicache((void *)(moea64_scratchpage_va[1] +
      (va & ADDR_POFF)), sz);

  mtx_unlock(&moea64_scratchpage_mtx);
 }
}
