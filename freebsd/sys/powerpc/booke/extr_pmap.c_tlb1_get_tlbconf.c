
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SPR_TLB1CFG ;
 int TLBCFG_NENTRY_MASK ;
 int mfspr (int ) ;
 int tlb1_entries ;

__attribute__((used)) static __inline void
tlb1_get_tlbconf(void)
{
 uint32_t tlb1_cfg;

 tlb1_cfg = mfspr(SPR_TLB1CFG);
 tlb1_entries = tlb1_cfg & TLBCFG_NENTRY_MASK;
}
