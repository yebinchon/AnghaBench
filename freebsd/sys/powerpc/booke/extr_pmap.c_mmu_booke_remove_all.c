
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int uint8_t ;
typedef TYPE_3__* pv_entry_t ;
typedef int mmu_t ;
struct TYPE_11__ {int pv_pmap; int pv_va; } ;
struct TYPE_9__ {int pv_list; } ;
struct TYPE_10__ {TYPE_1__ md; } ;


 int PGA_WRITEABLE ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PTBL_HOLD_FLAG (int ) ;
 TYPE_3__* TAILQ_FIRST (int *) ;
 TYPE_3__* TAILQ_NEXT (TYPE_3__*,int ) ;
 int pte_remove (int ,int ,int ,int ) ;
 int pv_link ;
 int pvh_global_lock ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int vm_page_aflag_clear (TYPE_2__*,int ) ;

__attribute__((used)) static void
mmu_booke_remove_all(mmu_t mmu, vm_page_t m)
{
 pv_entry_t pv, pvn;
 uint8_t hold_flag;

 rw_wlock(&pvh_global_lock);
 for (pv = TAILQ_FIRST(&m->md.pv_list); pv != ((void*)0); pv = pvn) {
  pvn = TAILQ_NEXT(pv, pv_link);

  PMAP_LOCK(pv->pv_pmap);
  hold_flag = PTBL_HOLD_FLAG(pv->pv_pmap);
  pte_remove(mmu, pv->pv_pmap, pv->pv_va, hold_flag);
  PMAP_UNLOCK(pv->pv_pmap);
 }
 vm_page_aflag_clear(m, PGA_WRITEABLE);
 rw_wunlock(&pvh_global_lock);
}
