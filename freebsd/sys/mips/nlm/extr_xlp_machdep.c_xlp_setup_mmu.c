
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;


 unsigned int mips_rd_pagegrain () ;
 int mips_wr_pagegrain (unsigned int) ;
 int nlm_extended_tlb_en (int) ;
 int nlm_large_variable_tlb_en (int) ;
 int nlm_mmu_setup (int ,int ,int ) ;
 int nlm_setup_extended_pagemask (int ) ;
 scalar_t__ nlm_threadid () ;

__attribute__((used)) static void
xlp_setup_mmu(void)
{
 uint32_t pagegrain;

 if (nlm_threadid() == 0) {
  nlm_setup_extended_pagemask(0);
  nlm_large_variable_tlb_en(1);
  nlm_extended_tlb_en(1);
  nlm_mmu_setup(0, 0, 0);
 }


 pagegrain = mips_rd_pagegrain();
 pagegrain |= (1U << 31) |
     (1 << 30) |
     (1 << 29);
 mips_wr_pagegrain(pagegrain);
}
