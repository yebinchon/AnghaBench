
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
struct xdma_iommu {int p; } ;
struct beri_iommu_softc {int dummy; } ;
typedef int pt_entry_t ;
typedef int * pmap_t ;
typedef int device_t ;


 int PTE_C (int ) ;
 int PTE_C_MASK ;
 int PTE_V ;
 int VM_MEMATTR_UNCACHEABLE ;
 int beri_iommu_invalidate (struct beri_iommu_softc*,int ) ;
 struct beri_iommu_softc* device_get_softc (int ) ;
 int mips_dcache_wbinv_range (int ,int) ;
 int panic (char*) ;
 int* pmap_pte (int *,int ) ;
 scalar_t__ pte_test (int*,int ) ;

__attribute__((used)) static int
beri_iommu_enter(device_t dev, struct xdma_iommu *xio, vm_offset_t va,
    vm_paddr_t pa)
{
 struct beri_iommu_softc *sc;
 pt_entry_t opte, npte;
 pt_entry_t *pte;
 pmap_t p;

 sc = device_get_softc(dev);
 p = &xio->p;

 pte = pmap_pte(p, va);
 if (pte == ((void*)0))
  panic("pte is NULL\n");


 opte = *pte;
 npte = opte & ~PTE_C_MASK;
 npte |= PTE_C(VM_MEMATTR_UNCACHEABLE);
 *pte = npte;


 mips_dcache_wbinv_range((vm_offset_t)pte, sizeof(vm_offset_t));


 if (pte_test(&opte, PTE_V) && opte != npte)
  beri_iommu_invalidate(sc, va);

 return (0);
}
