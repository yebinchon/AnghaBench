
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int vm_offset_t ;
typedef TYPE_3__* pv_entry_t ;
typedef int pmap_t ;
struct TYPE_9__ {int pv_va; int pv_pmap; } ;
struct TYPE_7__ {int pv_list; } ;
struct TYPE_8__ {TYPE_1__ md; } ;


 int MA_OWNED ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 int RA_WLOCKED ;
 int TAILQ_INSERT_TAIL (int *,TYPE_3__*,int ) ;
 int panic (char*) ;
 TYPE_3__* pv_alloc () ;
 int pv_link ;
 int pvh_global_lock ;
 int rw_assert (int *,int ) ;

__attribute__((used)) static void
pv_insert(pmap_t pmap, vm_offset_t va, vm_page_t m)
{
 pv_entry_t pve;





 pve = pv_alloc();
 if (pve == ((void*)0))
  panic("pv_insert: no pv entries!");

 pve->pv_pmap = pmap;
 pve->pv_va = va;


 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 rw_assert(&pvh_global_lock, RA_WLOCKED);

 TAILQ_INSERT_TAIL(&m->md.pv_list, pve, pv_link);


}
