
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int u_long ;
struct tte {int tte_data; int tte_vpn; } ;


 int CTR4 (int ,char*,int ,int ,struct tte*,int) ;
 int KTR_PMAP ;
 int TD_8K ;
 int TD_P ;
 int TD_PA (int ) ;
 int TD_REF ;
 int TD_V ;
 int TS_8K ;
 int TV_VPN (int ,int ) ;
 struct tte* tsb_kvtotte (int ) ;

void
pmap_kenter_flags(vm_offset_t va, vm_paddr_t pa, u_long flags)
{
 struct tte *tp;

 tp = tsb_kvtotte(va);
 CTR4(KTR_PMAP, "pmap_kenter_flags: va=%#lx pa=%#lx tp=%p data=%#lx",
     va, pa, tp, tp->tte_data);
 tp->tte_vpn = TV_VPN(va, TS_8K);
 tp->tte_data = TD_V | TD_8K | TD_PA(pa) | TD_REF | TD_P | flags;
}
