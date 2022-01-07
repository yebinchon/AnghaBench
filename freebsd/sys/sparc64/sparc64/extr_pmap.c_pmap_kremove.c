
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int vm_offset_t ;
struct tte {int tte_data; } ;
struct TYPE_5__ {int tte_list; } ;
struct TYPE_6__ {TYPE_1__ md; } ;


 int CTR3 (int ,char*,int ,struct tte*,int) ;
 int KTR_PMAP ;
 TYPE_2__* PHYS_TO_VM_PAGE (int ) ;
 int PMAP_STATS_INC (int ) ;
 int RA_WLOCKED ;
 int TAILQ_REMOVE (int *,struct tte*,int ) ;
 int TD_V ;
 int TTE_GET_PA (struct tte*) ;
 int TTE_ZERO (struct tte*) ;
 int pmap_cache_remove (TYPE_2__*,int ) ;
 int pmap_nkremove ;
 int rw_assert (int *,int ) ;
 struct tte* tsb_kvtotte (int ) ;
 int tte_link ;
 int tte_list_global_lock ;

void
pmap_kremove(vm_offset_t va)
{
 struct tte *tp;
 vm_page_t m;

 rw_assert(&tte_list_global_lock, RA_WLOCKED);
 PMAP_STATS_INC(pmap_nkremove);
 tp = tsb_kvtotte(va);
 CTR3(KTR_PMAP, "pmap_kremove: va=%#lx tp=%p data=%#lx", va, tp,
     tp->tte_data);
 if ((tp->tte_data & TD_V) == 0)
  return;
 m = PHYS_TO_VM_PAGE(TTE_GET_PA(tp));
 TAILQ_REMOVE(&m->md.tte_list, tp, tte_link);
 pmap_cache_remove(m, va);
 TTE_ZERO(tp);
}
