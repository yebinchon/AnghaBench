
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int JZ_CORESTS_MIRQ0P ;
 int JZ_REIM_MIRQ0M ;
 int mips_rd_xburst_reim () ;
 int mips_wr_xburst_core_sts (int ) ;
 int mips_wr_xburst_mbox0 (int ) ;
 int mips_wr_xburst_mbox1 (int ) ;
 int mips_wr_xburst_reim (int ) ;

void
platform_cpu_init(void)
{
 uint32_t reg;





 reg = mips_rd_xburst_reim();
 reg &= ~JZ_REIM_MIRQ0M;
 mips_wr_xburst_reim(reg);


 mips_wr_xburst_mbox0(0);
 mips_wr_xburst_mbox1(0);
 mips_wr_xburst_core_sts(~JZ_CORESTS_MIRQ0P);


 reg |= JZ_REIM_MIRQ0M;
 mips_wr_xburst_reim(reg);
}
