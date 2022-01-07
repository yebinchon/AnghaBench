
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_3__* vm_page_t ;
typedef int vm_offset_t ;
typedef int uint8_t ;
typedef scalar_t__ pte_t ;
typedef TYPE_4__* pmap_t ;
typedef int mmu_t ;
struct TYPE_14__ {int resident_count; int wired_count; } ;
struct TYPE_16__ {TYPE_2__ pm_stats; scalar_t__** pm_pdir; } ;
struct TYPE_13__ {int pv_tracked; int pv_list; } ;
struct TYPE_15__ {TYPE_1__ md; } ;


 int KASSERT (scalar_t__*,char*) ;
 unsigned int PDIR_IDX (int ) ;
 int PGA_REFERENCED ;
 TYPE_3__* PHYS_TO_VM_PAGE (int ) ;
 unsigned int PTBL_IDX (int ) ;
 int PTBL_UNHOLD ;
 scalar_t__ PTE_ISMANAGED (scalar_t__*) ;
 scalar_t__ PTE_ISMODIFIED (scalar_t__*) ;
 scalar_t__ PTE_ISREFERENCED (scalar_t__*) ;
 int PTE_ISVALID (scalar_t__*) ;
 scalar_t__ PTE_ISWIRED (scalar_t__*) ;
 int PTE_PA (scalar_t__*) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 TYPE_4__* kernel_pmap ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int ptbl_unhold (int ,TYPE_4__*,unsigned int) ;
 int pv_remove (TYPE_4__*,int ,TYPE_3__*) ;
 int tlb0_flush_entry (int ) ;
 int tlb_miss_lock () ;
 int tlb_miss_unlock () ;
 int tlbivax_mutex ;
 int vm_page_aflag_set (TYPE_3__*,int ) ;
 int vm_page_dirty (TYPE_3__*) ;

__attribute__((used)) static int
pte_remove(mmu_t mmu, pmap_t pmap, vm_offset_t va, uint8_t flags)
{
 unsigned int pdir_idx = PDIR_IDX(va);
 unsigned int ptbl_idx = PTBL_IDX(va);
 vm_page_t m;
 pte_t *ptbl;
 pte_t *pte;





 ptbl = pmap->pm_pdir[pdir_idx];
 KASSERT(ptbl, ("pte_remove: null ptbl"));

 pte = &ptbl[ptbl_idx];

 if (pte == ((void*)0) || !PTE_ISVALID(pte))
  return (0);

 if (PTE_ISWIRED(pte))
  pmap->pm_stats.wired_count--;


 m = PHYS_TO_VM_PAGE(PTE_PA(pte));


 if (PTE_ISMANAGED(pte)) {

  if (PTE_ISMODIFIED(pte))
   vm_page_dirty(m);

  if (PTE_ISREFERENCED(pte))
   vm_page_aflag_set(m, PGA_REFERENCED);

  pv_remove(pmap, va, m);
 } else if (pmap == kernel_pmap && m && m->md.pv_tracked) {





  pv_remove(pmap, va, m);
  if (TAILQ_EMPTY(&m->md.pv_list))
   m->md.pv_tracked = 0;
 }

 mtx_lock_spin(&tlbivax_mutex);
 tlb_miss_lock();

 tlb0_flush_entry(va);
 *pte = 0;

 tlb_miss_unlock();
 mtx_unlock_spin(&tlbivax_mutex);

 pmap->pm_stats.resident_count--;

 if (flags & PTBL_UNHOLD) {

  return (ptbl_unhold(mmu, pmap, pdir_idx));
 }


 return (0);
}
