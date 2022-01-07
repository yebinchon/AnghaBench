
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_3__* vm_page_t ;
typedef int vm_offset_t ;
struct tte {int tte_data; } ;
struct TYPE_10__ {int resident_count; int wired_count; } ;
struct pmap {TYPE_2__ pm_stats; } ;
struct TYPE_9__ {int tte_list; } ;
struct TYPE_11__ {int oflags; TYPE_1__ md; } ;


 int KASSERT (int,char*) ;
 int PGA_REFERENCED ;
 int PGA_WRITEABLE ;
 int PMAP_LOCK (struct pmap*) ;
 int PMAP_UNLOCK (struct pmap*) ;
 struct tte* TAILQ_FIRST (int *) ;
 struct tte* TAILQ_NEXT (struct tte*,int ) ;
 int TAILQ_REMOVE (int *,struct tte*,int ) ;
 int TD_PV ;
 int TD_REF ;
 int TD_V ;
 int TD_W ;
 int TD_WIRED ;
 struct pmap* TTE_GET_PMAP (struct tte*) ;
 int TTE_GET_VA (struct tte*) ;
 int TTE_ZERO (struct tte*) ;
 int VPO_UNMANAGED ;
 int pmap_cache_remove (TYPE_3__*,int ) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int tlb_page_demap (struct pmap*,int ) ;
 int tte_link ;
 int tte_list_global_lock ;
 int vm_page_aflag_clear (TYPE_3__*,int ) ;
 int vm_page_aflag_set (TYPE_3__*,int ) ;
 int vm_page_dirty (TYPE_3__*) ;

void
pmap_remove_all(vm_page_t m)
{
 struct pmap *pm;
 struct tte *tpn;
 struct tte *tp;
 vm_offset_t va;

 KASSERT((m->oflags & VPO_UNMANAGED) == 0,
     ("pmap_remove_all: page %p is not managed", m));
 rw_wlock(&tte_list_global_lock);
 for (tp = TAILQ_FIRST(&m->md.tte_list); tp != ((void*)0); tp = tpn) {
  tpn = TAILQ_NEXT(tp, tte_link);
  if ((tp->tte_data & TD_PV) == 0)
   continue;
  pm = TTE_GET_PMAP(tp);
  va = TTE_GET_VA(tp);
  PMAP_LOCK(pm);
  if ((tp->tte_data & TD_WIRED) != 0)
   pm->pm_stats.wired_count--;
  if ((tp->tte_data & TD_REF) != 0)
   vm_page_aflag_set(m, PGA_REFERENCED);
  if ((tp->tte_data & TD_W) != 0)
   vm_page_dirty(m);
  tp->tte_data &= ~TD_V;
  tlb_page_demap(pm, va);
  TAILQ_REMOVE(&m->md.tte_list, tp, tte_link);
  pm->pm_stats.resident_count--;
  pmap_cache_remove(m, va);
  TTE_ZERO(tp);
  PMAP_UNLOCK(pm);
 }
 vm_page_aflag_clear(m, PGA_WRITEABLE);
 rw_wunlock(&tte_list_global_lock);
}
