
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int u_int ;
struct md_page {int pv_list; } ;
typedef TYPE_1__* pv_entry_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;
struct TYPE_4__ {int pv_va; } ;


 int PG_PS_FRAME ;
 int PMAP_ENTER_NORECLAIM ;
 int RA_WLOCKED ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 TYPE_1__* get_pv_entry (int ,int) ;
 struct md_page* pa_to_pvh (int) ;
 scalar_t__ pv_entry_count ;
 scalar_t__ pv_entry_high_water ;
 int pv_next ;
 int pvh_global_lock ;
 int rw_assert (int *,int ) ;

__attribute__((used)) static bool
pmap_pv_insert_pde(pmap_t pmap, vm_offset_t va, pd_entry_t pde, u_int flags)
{
 struct md_page *pvh;
 pv_entry_t pv;
 bool noreclaim;

 rw_assert(&pvh_global_lock, RA_WLOCKED);
 noreclaim = (flags & PMAP_ENTER_NORECLAIM) != 0;
 if ((noreclaim && pv_entry_count >= pv_entry_high_water) ||
     (pv = get_pv_entry(pmap, noreclaim)) == ((void*)0))
  return (0);
 pv->pv_va = va;
 pvh = pa_to_pvh(pde & PG_PS_FRAME);
 TAILQ_INSERT_TAIL(&pvh->pv_list, pv, pv_next);
 return (1);
}
