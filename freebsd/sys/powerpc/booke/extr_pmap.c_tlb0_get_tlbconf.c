
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SPR_TLB0CFG ;
 int TLBCFG_ASSOC_MASK ;
 int TLBCFG_ASSOC_SHIFT ;
 int TLBCFG_NENTRY_MASK ;
 int mfspr (int ) ;
 int tlb0_entries ;
 int tlb0_entries_per_way ;
 int tlb0_ways ;

__attribute__((used)) static __inline void
tlb0_get_tlbconf(void)
{
 uint32_t tlb0_cfg;

 tlb0_cfg = mfspr(SPR_TLB0CFG);
 tlb0_entries = tlb0_cfg & TLBCFG_NENTRY_MASK;
 tlb0_ways = (tlb0_cfg & TLBCFG_ASSOC_MASK) >> TLBCFG_ASSOC_SHIFT;
 tlb0_entries_per_way = tlb0_entries / tlb0_ways;
}
