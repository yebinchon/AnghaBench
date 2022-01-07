
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct tte {int tte_data; } ;


 int CTR3 (int ,char*,int ,struct tte*,int ) ;
 int KTR_PMAP ;
 int TTE_ZERO (struct tte*) ;
 struct tte* tsb_kvtotte (int ) ;

void
pmap_kremove_flags(vm_offset_t va)
{
 struct tte *tp;

 tp = tsb_kvtotte(va);
 CTR3(KTR_PMAP, "pmap_kremove_flags: va=%#lx tp=%p data=%#lx", va, tp,
     tp->tte_data);
 TTE_ZERO(tp);
}
