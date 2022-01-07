
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef size_t vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef int vm_paddr_t ;
struct rwlock {int dummy; } ;
typedef int pt_entry_t ;
typedef int pn_t ;
typedef TYPE_2__* pmap_t ;
typedef int pd_entry_t ;
struct TYPE_17__ {int * pm_l1; } ;
struct TYPE_16__ {int flags; int ref_count; } ;


 size_t L1_SHIFT ;
 size_t L2_SHIFT ;
 size_t Ln_ADDR_MASK ;
 int MA_OWNED ;
 size_t NUL1E ;
 int PAGE_SIZE ;
 int PG_ZERO ;
 scalar_t__ PHYS_TO_DMAP (int ) ;
 TYPE_1__* PHYS_TO_VM_PAGE (int ) ;
 int PMAP_LOCK (TYPE_2__*) ;
 int PMAP_LOCK_ASSERT (TYPE_2__*,int ) ;
 int PMAP_UNLOCK (TYPE_2__*) ;
 int PTE_PPN0_S ;
 int PTE_TO_PHYS (scalar_t__) ;
 int PTE_V ;
 int RELEASE_PV_LIST_LOCK (struct rwlock**) ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_WIRED ;
 int VM_ALLOC_ZERO ;
 int VM_PAGE_TO_PHYS (TYPE_1__*) ;
 int pmap_distribute_l1 (TYPE_2__*,size_t,int) ;
 scalar_t__ pmap_load (int *) ;
 int pmap_resident_count_inc (TYPE_2__*,int) ;
 int pmap_store (int *,int) ;
 int pmap_zero_page (TYPE_1__*) ;
 int pvh_global_lock ;
 int rw_rlock (int *) ;
 int rw_runlock (int *) ;
 TYPE_1__* vm_page_alloc (int *,size_t,int) ;
 int vm_page_free_zero (TYPE_1__*) ;
 int vm_page_unwire_noq (TYPE_1__*) ;
 int vm_wait (int *) ;

__attribute__((used)) static vm_page_t
_pmap_alloc_l3(pmap_t pmap, vm_pindex_t ptepindex, struct rwlock **lockp)
{
 vm_page_t m, pdpg;
 pt_entry_t entry;
 vm_paddr_t phys;
 pn_t pn;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);




 if ((m = vm_page_alloc(((void*)0), ptepindex, VM_ALLOC_NOOBJ |
     VM_ALLOC_WIRED | VM_ALLOC_ZERO)) == ((void*)0)) {
  if (lockp != ((void*)0)) {
   RELEASE_PV_LIST_LOCK(lockp);
   PMAP_UNLOCK(pmap);
   rw_runlock(&pvh_global_lock);
   vm_wait(((void*)0));
   rw_rlock(&pvh_global_lock);
   PMAP_LOCK(pmap);
  }





  return (((void*)0));
 }

 if ((m->flags & PG_ZERO) == 0)
  pmap_zero_page(m);






 if (ptepindex >= NUL1E) {
  pd_entry_t *l1;
  vm_pindex_t l1index;

  l1index = ptepindex - NUL1E;
  l1 = &pmap->pm_l1[l1index];

  pn = (VM_PAGE_TO_PHYS(m) / PAGE_SIZE);
  entry = (PTE_V);
  entry |= (pn << PTE_PPN0_S);
  pmap_store(l1, entry);
  pmap_distribute_l1(pmap, l1index, entry);
 } else {
  vm_pindex_t l1index;
  pd_entry_t *l1, *l2;

  l1index = ptepindex >> (L1_SHIFT - L2_SHIFT);
  l1 = &pmap->pm_l1[l1index];
  if (pmap_load(l1) == 0) {

   if (_pmap_alloc_l3(pmap, NUL1E + l1index,
       lockp) == ((void*)0)) {
    vm_page_unwire_noq(m);
    vm_page_free_zero(m);
    return (((void*)0));
   }
  } else {
   phys = PTE_TO_PHYS(pmap_load(l1));
   pdpg = PHYS_TO_VM_PAGE(phys);
   pdpg->ref_count++;
  }

  phys = PTE_TO_PHYS(pmap_load(l1));
  l2 = (pd_entry_t *)PHYS_TO_DMAP(phys);
  l2 = &l2[ptepindex & Ln_ADDR_MASK];

  pn = (VM_PAGE_TO_PHYS(m) / PAGE_SIZE);
  entry = (PTE_V);
  entry |= (pn << PTE_PPN0_S);
  pmap_store(l2, entry);
 }

 pmap_resident_count_inc(pmap, 1);

 return (m);
}
