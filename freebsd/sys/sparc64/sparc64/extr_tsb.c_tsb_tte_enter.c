
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


typedef TYPE_3__* vm_page_t ;
typedef int vm_offset_t ;
typedef int u_long ;
struct tte {int tte_data; int tte_vpn; } ;
typedef TYPE_4__* pmap_t ;
struct TYPE_16__ {int resident_count; } ;
struct TYPE_19__ {TYPE_1__ pm_stats; } ;
struct TYPE_17__ {int tte_list; } ;
struct TYPE_18__ {int flags; int oflags; TYPE_2__ md; int pindex; TYPE_14__* object; } ;
struct TYPE_15__ {int type; } ;


 int CTR5 (int ,char*,int ,int ,TYPE_14__*,int,int ) ;
 scalar_t__ DCACHE_COLOR (int ) ;
 int KASSERT (int,char*) ;
 int KTR_SPARE2 ;
 int MA_OWNED ;
 int PG_FICTITIOUS ;
 int PMAP_LOCK_ASSERT (TYPE_4__*,int ) ;
 int PMAP_STATS_INC (int ) ;
 int RA_WLOCKED ;
 int TAILQ_INSERT_TAIL (int *,struct tte*,int ) ;
 int TD_CP ;
 int TD_CV ;
 int TD_E ;
 int TD_FAKE ;
 int TD_PV ;
 int TD_REF ;
 int TD_V ;
 int TSB_BUCKET_SIZE ;
 int TTE_GET_VA (struct tte*) ;
 int TV_VPN (int ,int) ;
 int VM_PAGE_TO_PHYS (TYPE_3__*) ;
 int VPO_UNMANAGED ;
 TYPE_4__* kernel_pmap ;
 scalar_t__ pmap_cache_enter (TYPE_3__*,int ) ;
 int pmap_remove_tte (TYPE_4__*,int *,struct tte*,int ) ;
 int rd (int ) ;
 int rw_assert (int *,int ) ;
 int tick ;
 int tlb_page_demap (TYPE_4__*,int ) ;
 struct tte* tsb_kvtotte (int ) ;
 int tsb_nenter_k ;
 int tsb_nenter_k_oc ;
 int tsb_nenter_u ;
 int tsb_nenter_u_oc ;
 int tsb_nrepl ;
 struct tte* tsb_vtobucket (TYPE_4__*,int,int ) ;
 int tte_link ;
 int tte_list_global_lock ;

struct tte *
tsb_tte_enter(pmap_t pm, vm_page_t m, vm_offset_t va, u_long sz, u_long data)
{
 struct tte *bucket;
 struct tte *rtp;
 struct tte *tp;
 vm_offset_t ova;
 int b0;
 int i;

 if (DCACHE_COLOR(VM_PAGE_TO_PHYS(m)) != DCACHE_COLOR(va)) {
  CTR5(KTR_SPARE2,
 "tsb_tte_enter: off colour va=%#lx pa=%#lx o=%p ot=%d pi=%#lx",
      va, VM_PAGE_TO_PHYS(m), m->object,
      m->object ? m->object->type : -1,
      m->pindex);
  if (pm == kernel_pmap)
   PMAP_STATS_INC(tsb_nenter_k_oc);
  else
   PMAP_STATS_INC(tsb_nenter_u_oc);
 }

 rw_assert(&tte_list_global_lock, RA_WLOCKED);
 PMAP_LOCK_ASSERT(pm, MA_OWNED);
 if (pm == kernel_pmap) {
  PMAP_STATS_INC(tsb_nenter_k);
  tp = tsb_kvtotte(va);
  KASSERT((tp->tte_data & TD_V) == 0,
      ("tsb_tte_enter: replacing valid kernel mapping"));
  goto enter;
 }
 PMAP_STATS_INC(tsb_nenter_u);

 bucket = tsb_vtobucket(pm, sz, va);

 tp = ((void*)0);
 rtp = ((void*)0);
 b0 = rd(tick) & (TSB_BUCKET_SIZE - 1);
 i = b0;
 do {
  if ((bucket[i].tte_data & TD_V) == 0) {
   tp = &bucket[i];
   break;
  }
  if (tp == ((void*)0)) {
   if ((bucket[i].tte_data & TD_REF) == 0)
    tp = &bucket[i];
   else if (rtp == ((void*)0))
    rtp = &bucket[i];
  }
 } while ((i = (i + 1) & (TSB_BUCKET_SIZE - 1)) != b0);

 if (tp == ((void*)0))
  tp = rtp;
 if ((tp->tte_data & TD_V) != 0) {
  PMAP_STATS_INC(tsb_nrepl);
  ova = TTE_GET_VA(tp);
  pmap_remove_tte(pm, ((void*)0), tp, ova);
  tlb_page_demap(pm, ova);
 }

enter:
 if ((m->flags & PG_FICTITIOUS) == 0) {
  data |= TD_CP;
  if ((m->oflags & VPO_UNMANAGED) == 0) {
   pm->pm_stats.resident_count++;
   data |= TD_PV;
  }
  if (pmap_cache_enter(m, va) != 0)
   data |= TD_CV;
  TAILQ_INSERT_TAIL(&m->md.tte_list, tp, tte_link);
 } else
  data |= TD_FAKE | TD_E;

 tp->tte_vpn = TV_VPN(va, sz);
 tp->tte_data = data;

 return (tp);
}
