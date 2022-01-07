
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ u_long ;
struct tte {scalar_t__ tte_data; int tte_vpn; } ;
struct TYPE_11__ {int type; } ;
struct TYPE_9__ {int tte_list; } ;
struct TYPE_10__ {TYPE_1__ md; int pindex; TYPE_8__* object; } ;


 int CTR4 (int ,char*,scalar_t__,scalar_t__,struct tte*,scalar_t__) ;
 int CTR5 (int ,char*,scalar_t__,scalar_t__,TYPE_8__*,int,int ) ;
 scalar_t__ DCACHE_COLOR (scalar_t__) ;
 int KTR_PMAP ;
 int KTR_SPARE2 ;
 TYPE_2__* PHYS_TO_VM_PAGE (int ) ;
 int PMAP_STATS_INC (int ) ;
 int RA_WLOCKED ;
 int TAILQ_INSERT_TAIL (int *,struct tte*,int ) ;
 int TAILQ_REMOVE (int *,struct tte*,int ) ;
 scalar_t__ TD_8K ;
 scalar_t__ TD_CP ;
 scalar_t__ TD_CV ;
 scalar_t__ TD_P ;
 scalar_t__ TD_REF ;
 scalar_t__ TD_SW ;
 scalar_t__ TD_V ;
 scalar_t__ TD_W ;
 int TS_8K ;
 int TTE_GET_PA (struct tte*) ;
 scalar_t__ TTE_GET_VA (struct tte*) ;
 int TV_VPN (scalar_t__,int ) ;
 scalar_t__ VM_PAGE_TO_PHYS (TYPE_2__*) ;
 int kernel_pmap ;
 scalar_t__ pmap_cache_enter (TYPE_2__*,scalar_t__) ;
 int pmap_cache_remove (TYPE_2__*,scalar_t__) ;
 int pmap_nkenter ;
 int pmap_nkenter_oc ;
 int pmap_nkenter_stupid ;
 int rw_assert (int *,int ) ;
 int tlb_page_demap (int ,scalar_t__) ;
 struct tte* tsb_kvtotte (scalar_t__) ;
 int tte_link ;
 int tte_list_global_lock ;

void
pmap_kenter(vm_offset_t va, vm_page_t m)
{
 vm_offset_t ova;
 struct tte *tp;
 vm_page_t om;
 u_long data;

 rw_assert(&tte_list_global_lock, RA_WLOCKED);
 PMAP_STATS_INC(pmap_nkenter);
 tp = tsb_kvtotte(va);
 CTR4(KTR_PMAP, "pmap_kenter: va=%#lx pa=%#lx tp=%p data=%#lx",
     va, VM_PAGE_TO_PHYS(m), tp, tp->tte_data);
 if (DCACHE_COLOR(VM_PAGE_TO_PHYS(m)) != DCACHE_COLOR(va)) {
  CTR5(KTR_SPARE2,
 "pmap_kenter: off color va=%#lx pa=%#lx o=%p ot=%d pi=%#lx",
      va, VM_PAGE_TO_PHYS(m), m->object,
      m->object ? m->object->type : -1,
      m->pindex);
  PMAP_STATS_INC(pmap_nkenter_oc);
 }
 if ((tp->tte_data & TD_V) != 0) {
  om = PHYS_TO_VM_PAGE(TTE_GET_PA(tp));
  ova = TTE_GET_VA(tp);
  if (m == om && va == ova) {
   PMAP_STATS_INC(pmap_nkenter_stupid);
   return;
  }
  TAILQ_REMOVE(&om->md.tte_list, tp, tte_link);
  pmap_cache_remove(om, ova);
  if (va != ova)
   tlb_page_demap(kernel_pmap, ova);
 }
 data = TD_V | TD_8K | VM_PAGE_TO_PHYS(m) | TD_REF | TD_SW | TD_CP |
     TD_P | TD_W;
 if (pmap_cache_enter(m, va) != 0)
  data |= TD_CV;
 tp->tte_vpn = TV_VPN(va, TS_8K);
 tp->tte_data = data;
 TAILQ_INSERT_TAIL(&m->md.tte_list, tp, tte_link);
}
