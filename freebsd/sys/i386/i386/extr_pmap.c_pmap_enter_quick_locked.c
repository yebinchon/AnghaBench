
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_16__ ;


typedef int vm_prot_t ;
typedef TYPE_3__* vm_page_t ;
typedef size_t vm_offset_t ;
typedef size_t u_int ;
struct spglist {int dummy; } ;
typedef int pt_entry_t ;
typedef TYPE_4__* pmap_t ;
typedef int pd_entry_t ;
struct TYPE_24__ {int resident_count; } ;
struct TYPE_27__ {int* pm_pdir; TYPE_1__ pm_stats; } ;
struct TYPE_25__ {int pat_mode; } ;
struct TYPE_26__ {int oflags; size_t pindex; TYPE_2__ md; int ref_count; } ;
struct TYPE_23__ {size_t clean_sva; size_t clean_eva; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 size_t PDRSHIFT ;
 int PG_FRAME ;
 int PG_MANAGED ;
 int PG_PS ;
 int PG_U ;
 int PG_V ;
 TYPE_3__* PHYS_TO_VM_PAGE (int) ;
 int PMAP_ENTER_NOSLEEP ;
 int PMAP_LOCK_ASSERT (TYPE_4__*,int ) ;
 int RA_WLOCKED ;
 int SLIST_INIT (struct spglist*) ;
 int VM_PAGE_TO_PHYS (TYPE_3__*) ;
 int VM_PROT_EXECUTE ;
 int VPO_UNMANAGED ;
 TYPE_3__* _pmap_allocpte (TYPE_4__*,size_t,int ) ;
 int i386_read_exec ;
 TYPE_4__* kernel_pmap ;
 TYPE_16__ kmi ;
 int pg_nx ;
 int pmap_cache_bits (TYPE_4__*,int ,int ) ;
 int pmap_invalidate_page_int (TYPE_4__*,size_t) ;
 int* pmap_pte_quick (TYPE_4__*,size_t) ;
 int pmap_try_insert_pv_entry (TYPE_4__*,size_t,TYPE_3__*) ;
 scalar_t__ pmap_unwire_ptp (TYPE_4__*,TYPE_3__*,struct spglist*) ;
 int pte_store_zero (int*,int) ;
 int pvh_global_lock ;
 int rw_assert (int *,int ) ;
 int sched_pin () ;
 int sched_unpin () ;
 int vm_page_free_pages_toq (struct spglist*,int) ;

__attribute__((used)) static vm_page_t
pmap_enter_quick_locked(pmap_t pmap, vm_offset_t va, vm_page_t m,
    vm_prot_t prot, vm_page_t mpte)
{
 pt_entry_t newpte, *pte;
 struct spglist free;

 KASSERT(pmap != kernel_pmap || va < kmi.clean_sva ||
     va >= kmi.clean_eva || (m->oflags & VPO_UNMANAGED) != 0,
     ("pmap_enter_quick_locked: managed mapping within the clean submap"));
 rw_assert(&pvh_global_lock, RA_WLOCKED);
 PMAP_LOCK_ASSERT(pmap, MA_OWNED);





 if (pmap != kernel_pmap) {
  u_int ptepindex;
  pd_entry_t ptepa;




  ptepindex = va >> PDRSHIFT;
  if (mpte && (mpte->pindex == ptepindex)) {
   mpte->ref_count++;
  } else {



   ptepa = pmap->pm_pdir[ptepindex];





   if (ptepa) {
    if (ptepa & PG_PS)
     return (((void*)0));
    mpte = PHYS_TO_VM_PAGE(ptepa & PG_FRAME);
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

 sched_pin();
 pte = pmap_pte_quick(pmap, va);
 if (*pte) {
  if (mpte != ((void*)0)) {
   mpte->ref_count--;
   mpte = ((void*)0);
  }
  sched_unpin();
  return (mpte);
 }




 if ((m->oflags & VPO_UNMANAGED) == 0 &&
     !pmap_try_insert_pv_entry(pmap, va, m)) {
  if (mpte != ((void*)0)) {
   SLIST_INIT(&free);
   if (pmap_unwire_ptp(pmap, mpte, &free)) {
    pmap_invalidate_page_int(pmap, va);
    vm_page_free_pages_toq(&free, 1);
   }

   mpte = ((void*)0);
  }
  sched_unpin();
  return (mpte);
 }




 pmap->pm_stats.resident_count++;

 newpte = VM_PAGE_TO_PHYS(m) | PG_V |
     pmap_cache_bits(pmap, m->md.pat_mode, 0);
 if ((m->oflags & VPO_UNMANAGED) == 0)
  newpte |= PG_MANAGED;




 if (pmap != kernel_pmap)
  newpte |= PG_U;
 pte_store_zero(pte, newpte);
 sched_unpin();
 return (mpte);
}
