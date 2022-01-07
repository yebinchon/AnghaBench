
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JZ_CORESTS_MIRQ0P ;
 int JZ_REIM_MIRQ0M ;
 unsigned int hard_int_mask (int ) ;
 unsigned int mips_rd_xburst_reim () ;
 int mips_wr_xburst_core_sts (int) ;
 int mips_wr_xburst_reim (unsigned int) ;
 int platform_ipi_hardintr_num () ;
 int set_intr_mask (unsigned int) ;

void
platform_init_ap(int cpuid)
{
 unsigned reg;




 mips_wr_xburst_core_sts(~(JZ_CORESTS_MIRQ0P << cpuid));


 reg = mips_rd_xburst_reim();
 reg |= (JZ_REIM_MIRQ0M << cpuid);
 mips_wr_xburst_reim(reg);




 reg = hard_int_mask(platform_ipi_hardintr_num());
 set_intr_mask(reg);
}
