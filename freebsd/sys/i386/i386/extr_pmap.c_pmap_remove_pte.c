
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vm_page_t ;
typedef int vm_offset_t ;
struct spglist {int dummy; } ;
typedef int pt_entry_t ;
typedef TYPE_2__* pmap_t ;
struct TYPE_7__ {int wired_count; int resident_count; } ;
struct TYPE_8__ {TYPE_1__ pm_stats; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int PGA_REFERENCED ;
 int PG_A ;
 int PG_FRAME ;
 int PG_G ;
 int PG_M ;
 int PG_MANAGED ;
 int PG_RW ;
 int PG_W ;
 int PHYS_TO_VM_PAGE (int) ;
 int PMAP_LOCK_ASSERT (TYPE_2__*,int ) ;
 int RA_WLOCKED ;
 int kernel_pmap ;
 int pmap_invalidate_page_int (int ,int ) ;
 int pmap_remove_entry (TYPE_2__*,int ,int ) ;
 int pmap_unuse_pt (TYPE_2__*,int ,struct spglist*) ;
 int pte_load_clear (int*) ;
 int pvh_global_lock ;
 int rw_assert (int *,int ) ;
 int vm_page_aflag_set (int ,int ) ;
 int vm_page_dirty (int ) ;

__attribute__((used)) static int
pmap_remove_pte(pmap_t pmap, pt_entry_t *ptq, vm_offset_t va,
    struct spglist *free)
{
 pt_entry_t oldpte;
 vm_page_t m;

 rw_assert(&pvh_global_lock, RA_WLOCKED);
 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 oldpte = pte_load_clear(ptq);
 KASSERT(oldpte != 0,
     ("pmap_remove_pte: pmap %p va %x zero pte", pmap, va));
 if (oldpte & PG_W)
  pmap->pm_stats.wired_count -= 1;




 if (oldpte & PG_G)
  pmap_invalidate_page_int(kernel_pmap, va);
 pmap->pm_stats.resident_count -= 1;
 if (oldpte & PG_MANAGED) {
  m = PHYS_TO_VM_PAGE(oldpte & PG_FRAME);
  if ((oldpte & (PG_M | PG_RW)) == (PG_M | PG_RW))
   vm_page_dirty(m);
  if (oldpte & PG_A)
   vm_page_aflag_set(m, PGA_REFERENCED);
  pmap_remove_entry(pmap, m, va);
 }
 return (pmap_unuse_pt(pmap, va, free));
}
