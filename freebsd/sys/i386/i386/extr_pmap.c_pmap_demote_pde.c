
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;


typedef TYPE_2__* vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
struct spglist {int dummy; } ;
typedef int pt_entry_t ;
typedef TYPE_3__* pmap_t ;
typedef int pd_entry_t ;
typedef int boolean_t ;
struct TYPE_19__ {int resident_count; } ;
struct TYPE_21__ {TYPE_1__ pm_stats; } ;
struct TYPE_20__ {scalar_t__ valid; int ref_count; } ;
struct TYPE_18__ {scalar_t__ td_pinned; } ;


 int CTR2 (int ,char*,int,TYPE_3__*) ;
 int FALSE ;
 int KASSERT (int,char*) ;
 int* KPTmap ;
 int KTR_PMAP ;
 int MA_OWNED ;
 int NPTEPG ;
 int* PADDR1 ;
 int* PADDR2 ;
 scalar_t__ PCPU_GET (int ) ;
 int PDRSHIFT ;
 int PG_A ;
 int PG_FRAME ;
 int PG_G ;
 int PG_M ;
 int PG_MANAGED ;
 int PG_PDE_PAT ;
 int PG_PS ;
 int PG_PS_FRAME ;
 int PG_PTE_PAT ;
 int PG_PTE_PROMOTE ;
 int PG_RW ;
 int PG_U ;
 int PG_V ;
 int PG_W ;
 int* PMAP1 ;
 int PMAP1changed ;
 int PMAP1changedcpu ;
 scalar_t__ PMAP1cpu ;
 int PMAP1unchanged ;
 int* PMAP2 ;
 int PMAP2mutex ;
 int PMAP_LOCK_ASSERT (TYPE_3__*,int ) ;
 int SLIST_INIT (struct spglist*) ;
 int TRUE ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_NORMAL ;
 int VM_ALLOC_WIRED ;
 int VM_PAGE_TO_PHYS (TYPE_2__*) ;
 int cpuid ;
 TYPE_14__* curthread ;
 size_t i386_btop (int) ;
 int invlcaddr (int*) ;
 TYPE_3__* kernel_pmap ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pde_store (int*,int) ;
 int pmap_fill_ptp (int*,int) ;
 int pmap_invalidate_page_int (TYPE_3__*,int) ;
 int pmap_invalidate_pde_page (TYPE_3__*,int,int) ;
 int pmap_kenter_pde (int,int) ;
 int pmap_pde_demotions ;
 int pmap_pv_demote_pde (TYPE_3__*,int,int) ;
 int pmap_remove_pde (TYPE_3__*,int*,int,struct spglist*) ;
 TYPE_2__* pmap_remove_pt_page (TYPE_3__*,int) ;
 int pmap_update_pde (TYPE_3__*,int,int*,int) ;
 int pvh_global_lock ;
 scalar_t__ rw_wowned (int *) ;
 int trunc_4mpage (int) ;
 TYPE_2__* vm_page_alloc (int *,int,int) ;
 int vm_page_free_pages_toq (struct spglist*,int) ;
 scalar_t__ vtopte (int) ;
 scalar_t__ workaround_erratum383 ;

__attribute__((used)) static boolean_t
pmap_demote_pde(pmap_t pmap, pd_entry_t *pde, vm_offset_t va)
{
 pd_entry_t newpde, oldpde;
 pt_entry_t *firstpte, newpte;
 vm_paddr_t mptepa;
 vm_page_t mpte;
 struct spglist free;
 vm_offset_t sva;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 oldpde = *pde;
 KASSERT((oldpde & (PG_PS | PG_V)) == (PG_PS | PG_V),
     ("pmap_demote_pde: oldpde is missing PG_PS and/or PG_V"));
 if ((oldpde & PG_A) == 0 || (mpte = pmap_remove_pt_page(pmap, va)) ==
     ((void*)0)) {
  KASSERT((oldpde & PG_W) == 0,
      ("pmap_demote_pde: page table page for a wired mapping"
      " is missing"));






  if ((oldpde & PG_A) == 0 || (mpte = vm_page_alloc(((void*)0),
      va >> PDRSHIFT, VM_ALLOC_NOOBJ | VM_ALLOC_NORMAL |
      VM_ALLOC_WIRED)) == ((void*)0)) {
   SLIST_INIT(&free);
   sva = trunc_4mpage(va);
   pmap_remove_pde(pmap, pde, sva, &free);
   if ((oldpde & PG_G) == 0)
    pmap_invalidate_pde_page(pmap, sva, oldpde);
   vm_page_free_pages_toq(&free, 1);
   CTR2(KTR_PMAP, "pmap_demote_pde: failure for va %#x"
       " in pmap %p", va, pmap);
   return (FALSE);
  }
  if (pmap != kernel_pmap) {
   mpte->ref_count = NPTEPG;
   pmap->pm_stats.resident_count++;
  }
 }
 mptepa = VM_PAGE_TO_PHYS(mpte);







 if (pmap == kernel_pmap)
  firstpte = &KPTmap[i386_btop(trunc_4mpage(va))];
 else if (curthread->td_pinned > 0 && rw_wowned(&pvh_global_lock)) {
  if ((*PMAP1 & PG_FRAME) != mptepa) {
   *PMAP1 = mptepa | PG_RW | PG_V | PG_A | PG_M;



   invlcaddr(PADDR1);
   PMAP1changed++;
  } else







   PMAP1unchanged++;
  firstpte = PADDR1;
 } else {
  mtx_lock(&PMAP2mutex);
  if ((*PMAP2 & PG_FRAME) != mptepa) {
   *PMAP2 = mptepa | PG_RW | PG_V | PG_A | PG_M;
   pmap_invalidate_page_int(kernel_pmap,
       (vm_offset_t)PADDR2);
  }
  firstpte = PADDR2;
 }
 newpde = mptepa | PG_M | PG_A | (oldpde & PG_U) | PG_RW | PG_V;
 KASSERT((oldpde & PG_A) != 0,
     ("pmap_demote_pde: oldpde is missing PG_A"));
 KASSERT((oldpde & (PG_M | PG_RW)) != PG_RW,
     ("pmap_demote_pde: oldpde is missing PG_M"));
 newpte = oldpde & ~PG_PS;
 if ((newpte & PG_PDE_PAT) != 0)
  newpte ^= PG_PDE_PAT | PG_PTE_PAT;





 if (mpte->valid == 0)
  pmap_fill_ptp(firstpte, newpte);

 KASSERT((*firstpte & PG_FRAME) == (newpte & PG_FRAME),
     ("pmap_demote_pde: firstpte and newpte map different physical"
     " addresses"));





 if ((*firstpte & PG_PTE_PROMOTE) != (newpte & PG_PTE_PROMOTE))
  pmap_fill_ptp(firstpte, newpte);
 if (workaround_erratum383)
  pmap_update_pde(pmap, va, pde, newpde);
 else if (pmap == kernel_pmap)
  pmap_kenter_pde(va, newpde);
 else
  pde_store(pde, newpde);
 if (firstpte == PADDR2)
  mtx_unlock(&PMAP2mutex);




 pmap_invalidate_page_int(pmap, (vm_offset_t)vtopte(va));
 if ((oldpde & PG_MANAGED) != 0)
  pmap_pv_demote_pde(pmap, va, oldpde & PG_PS_FRAME);

 pmap_pde_demotions++;
 CTR2(KTR_PMAP, "pmap_demote_pde: success for va %#x"
     " in pmap %p", va, pmap);
 return (TRUE);
}
