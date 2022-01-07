
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef uintptr_t vm_paddr_t ;
typedef uintptr_t vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
struct md_page {int pv_gen; int pv_list; } ;
typedef TYPE_3__* pv_entry_t ;
typedef int pt_entry_t ;
typedef scalar_t__ pmap_t ;
typedef int pd_entry_t ;
struct TYPE_14__ {uintptr_t pv_va; } ;
struct TYPE_12__ {int pv_gen; int pv_list; } ;
struct TYPE_13__ {int oflags; int flags; TYPE_1__ md; } ;


 int KASSERT (int,char*) ;
 uintptr_t L2_SHIFT ;
 int Ln_ENTRIES ;
 uintptr_t PAGE_SHIFT ;
 int PG_FICTITIOUS ;
 struct rwlock* PHYS_TO_PV_LIST_LOCK (uintptr_t) ;
 int PMAP_LOCK (scalar_t__) ;
 int PMAP_TRYLOCK (scalar_t__) ;
 int PMAP_TS_REFERENCED_MAX ;
 int PMAP_UNLOCK (scalar_t__) ;
 int PTE_A ;
 int PTE_D ;
 int PTE_RX ;
 int PTE_SW_WIRED ;
 int PTE_W ;
 scalar_t__ PV_PMAP (TYPE_3__*) ;
 int SLIST_INIT (struct spglist*) ;
 TYPE_3__* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_3__*,int ) ;
 int * TAILQ_NEXT (TYPE_3__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_3__*,int ) ;
 uintptr_t VM_PAGE_TO_PHYS (TYPE_2__*) ;
 int VPO_UNMANAGED ;
 struct md_page* pa_to_pvh (uintptr_t) ;
 int pmap_clear_bits (int*,int) ;
 int pmap_invalidate_page (scalar_t__,uintptr_t) ;
 int* pmap_l2 (scalar_t__,uintptr_t) ;
 int* pmap_l2_to_l3 (int*,uintptr_t) ;
 int pmap_load (int*) ;
 struct md_page pv_dummy ;
 int pv_next ;
 int pvh_global_lock ;
 int rw_rlock (int *) ;
 int rw_runlock (int *) ;
 int rw_wlock (struct rwlock*) ;
 int rw_wunlock (struct rwlock*) ;
 int vm_page_dirty (TYPE_2__*) ;
 int vm_page_free_pages_toq (struct spglist*,int) ;

int
pmap_ts_referenced(vm_page_t m)
{
 struct spglist free;
 struct md_page *pvh;
 struct rwlock *lock;
 pv_entry_t pv, pvf;
 pmap_t pmap;
 pd_entry_t *l2, l2e;
 pt_entry_t *l3, l3e;
 vm_paddr_t pa;
 vm_offset_t va;
 int cleared, md_gen, not_cleared, pvh_gen;

 KASSERT((m->oflags & VPO_UNMANAGED) == 0,
     ("pmap_ts_referenced: page %p is not managed", m));
 SLIST_INIT(&free);
 cleared = 0;
 pa = VM_PAGE_TO_PHYS(m);
 pvh = (m->flags & PG_FICTITIOUS) != 0 ? &pv_dummy : pa_to_pvh(pa);

 lock = PHYS_TO_PV_LIST_LOCK(pa);
 rw_rlock(&pvh_global_lock);
 rw_wlock(lock);
retry:
 not_cleared = 0;
 if ((pvf = TAILQ_FIRST(&pvh->pv_list)) == ((void*)0))
  goto small_mappings;
 pv = pvf;
 do {
  pmap = PV_PMAP(pv);
  if (!PMAP_TRYLOCK(pmap)) {
   pvh_gen = pvh->pv_gen;
   rw_wunlock(lock);
   PMAP_LOCK(pmap);
   rw_wlock(lock);
   if (pvh_gen != pvh->pv_gen) {
    PMAP_UNLOCK(pmap);
    goto retry;
   }
  }
  va = pv->pv_va;
  l2 = pmap_l2(pmap, va);
  l2e = pmap_load(l2);
  if ((l2e & (PTE_W | PTE_D)) == (PTE_W | PTE_D)) {





   vm_page_dirty(m);
  }
  if ((l2e & PTE_A) != 0) {
   if ((((pa >> PAGE_SHIFT) ^ (pv->pv_va >> L2_SHIFT) ^
       (uintptr_t)pmap) & (Ln_ENTRIES - 1)) == 0 &&
       (l2e & PTE_SW_WIRED) == 0) {
    pmap_clear_bits(l2, PTE_A);
    pmap_invalidate_page(pmap, va);
    cleared++;
   } else
    not_cleared++;
  }
  PMAP_UNLOCK(pmap);

  if (pv != ((void*)0) && TAILQ_NEXT(pv, pv_next) != ((void*)0)) {
   TAILQ_REMOVE(&pvh->pv_list, pv, pv_next);
   TAILQ_INSERT_TAIL(&pvh->pv_list, pv, pv_next);
   pvh->pv_gen++;
  }
  if (cleared + not_cleared >= PMAP_TS_REFERENCED_MAX)
   goto out;
 } while ((pv = TAILQ_FIRST(&pvh->pv_list)) != pvf);
small_mappings:
 if ((pvf = TAILQ_FIRST(&m->md.pv_list)) == ((void*)0))
  goto out;
 pv = pvf;
 do {
  pmap = PV_PMAP(pv);
  if (!PMAP_TRYLOCK(pmap)) {
   pvh_gen = pvh->pv_gen;
   md_gen = m->md.pv_gen;
   rw_wunlock(lock);
   PMAP_LOCK(pmap);
   rw_wlock(lock);
   if (pvh_gen != pvh->pv_gen || md_gen != m->md.pv_gen) {
    PMAP_UNLOCK(pmap);
    goto retry;
   }
  }
  l2 = pmap_l2(pmap, pv->pv_va);

  KASSERT((pmap_load(l2) & PTE_RX) == 0,
      ("pmap_ts_referenced: found an invalid l2 table"));

  l3 = pmap_l2_to_l3(l2, pv->pv_va);
  l3e = pmap_load(l3);
  if ((l3e & PTE_D) != 0)
   vm_page_dirty(m);
  if ((l3e & PTE_A) != 0) {
   if ((l3e & PTE_SW_WIRED) == 0) {






    pmap_clear_bits(l3, PTE_A);
    pmap_invalidate_page(pmap, pv->pv_va);
    cleared++;
   } else
    not_cleared++;
  }
  PMAP_UNLOCK(pmap);

  if (pv != ((void*)0) && TAILQ_NEXT(pv, pv_next) != ((void*)0)) {
   TAILQ_REMOVE(&m->md.pv_list, pv, pv_next);
   TAILQ_INSERT_TAIL(&m->md.pv_list, pv, pv_next);
   m->md.pv_gen++;
  }
 } while ((pv = TAILQ_FIRST(&m->md.pv_list)) != pvf && cleared +
     not_cleared < PMAP_TS_REFERENCED_MAX);
out:
 rw_wunlock(lock);
 rw_runlock(&pvh_global_lock);
 vm_page_free_pages_toq(&free, 0);
 return (cleared + not_cleared);
}
