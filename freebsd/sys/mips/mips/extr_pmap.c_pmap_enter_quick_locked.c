
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_18__ ;
typedef struct TYPE_25__ TYPE_16__ ;


typedef int vm_prot_t ;
typedef TYPE_3__* vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef TYPE_4__* pmap_t ;
typedef scalar_t__ pd_entry_t ;
struct TYPE_27__ {int resident_count; } ;
struct TYPE_30__ {TYPE_1__ pm_stats; } ;
struct TYPE_29__ {int oflags; unsigned int pindex; int ref_count; } ;
struct TYPE_28__ {TYPE_4__ vm_pmap; } ;
struct TYPE_26__ {TYPE_2__* p_vmspace; } ;
struct TYPE_25__ {int clean_eva; int clean_sva; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int MIPS_DIRECT_TO_PHYS (scalar_t__) ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 TYPE_3__* PHYS_TO_VM_PAGE (int ) ;
 int PMAP_ENTER_NOSLEEP ;
 int PMAP_LOCK_ASSERT (TYPE_4__*,int ) ;
 int PMAP_PTE_SET_CACHE_BITS (int,int ,TYPE_3__*) ;
 int PTE_G ;
 int PTE_MANAGED ;
 int PTE_RO ;
 int PTE_V ;
 int RA_WLOCKED ;
 int TLBLO_PA_TO_PFN (int ) ;
 int VM_MAXUSER_ADDRESS ;
 int VM_PAGE_TO_PHYS (TYPE_3__*) ;
 int VPO_UNMANAGED ;
 TYPE_3__* _pmap_allocpte (TYPE_4__*,unsigned int,int ) ;
 TYPE_18__* curproc ;
 scalar_t__ is_kernel_pmap (TYPE_4__*) ;
 TYPE_16__ kmi ;
 int mips_dcache_wbinv_range (int ,int ) ;
 int mips_icache_sync_range (int ,int ) ;
 scalar_t__* pmap_pde (TYPE_4__*,int ) ;
 unsigned int pmap_pde_pindex (int ) ;
 int* pmap_pte (TYPE_4__*,int ) ;
 int pmap_try_insert_pv_entry (TYPE_4__*,TYPE_3__*,int ,TYPE_3__*) ;
 int pmap_unwire_ptp (TYPE_4__*,int ,TYPE_3__*) ;
 scalar_t__ pte_test (int*,int) ;
 int pvh_global_lock ;
 int rw_assert (int *,int ) ;

__attribute__((used)) static vm_page_t
pmap_enter_quick_locked(pmap_t pmap, vm_offset_t va, vm_page_t m,
    vm_prot_t prot, vm_page_t mpte)
{
 pt_entry_t *pte, npte;
 vm_paddr_t pa;

 KASSERT(va < kmi.clean_sva || va >= kmi.clean_eva ||
     (m->oflags & VPO_UNMANAGED) != 0,
     ("pmap_enter_quick_locked: managed mapping within the clean submap"));
 rw_assert(&pvh_global_lock, RA_WLOCKED);
 PMAP_LOCK_ASSERT(pmap, MA_OWNED);





 if (va < VM_MAXUSER_ADDRESS) {
  pd_entry_t *pde;
  unsigned ptepindex;




  ptepindex = pmap_pde_pindex(va);
  if (mpte && (mpte->pindex == ptepindex)) {
   mpte->ref_count++;
  } else {



   pde = pmap_pde(pmap, va);





   if (pde && *pde != 0) {
    mpte = PHYS_TO_VM_PAGE(
        MIPS_DIRECT_TO_PHYS(*pde));
    mpte->ref_count++;
   } else {
    mpte = _pmap_allocpte(pmap, ptepindex,
        PMAP_ENTER_NOSLEEP);
    if (mpte == ((void*)0))
     return (mpte);
   }
  }
 } else {
  mpte = ((void*)0);
 }

 pte = pmap_pte(pmap, va);
 if (pte_test(pte, PTE_V)) {
  if (mpte != ((void*)0)) {
   mpte->ref_count--;
   mpte = ((void*)0);
  }
  return (mpte);
 }




 if ((m->oflags & VPO_UNMANAGED) == 0 &&
     !pmap_try_insert_pv_entry(pmap, mpte, va, m)) {
  if (mpte != ((void*)0)) {
   pmap_unwire_ptp(pmap, va, mpte);
   mpte = ((void*)0);
  }
  return (mpte);
 }




 pmap->pm_stats.resident_count++;

 pa = VM_PAGE_TO_PHYS(m);




 npte = PTE_RO | TLBLO_PA_TO_PFN(pa) | PTE_V;
 if ((m->oflags & VPO_UNMANAGED) == 0)
  npte |= PTE_MANAGED;

 PMAP_PTE_SET_CACHE_BITS(npte, pa, m);

 if (is_kernel_pmap(pmap))
  *pte = npte | PTE_G;
 else {
  *pte = npte;




  if (pmap == &curproc->p_vmspace->vm_pmap) {
   va &= ~PAGE_MASK;
   mips_icache_sync_range(va, PAGE_SIZE);
   mips_dcache_wbinv_range(va, PAGE_SIZE);
  }
 }
 return (mpte);
}
