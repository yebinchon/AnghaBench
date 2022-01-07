
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int JZ_CORESTS_MIRQ0P ;
 int KASSERT (int,char*) ;
 int PCPU_GET (int ) ;
 int cpuid ;
 int mips_rd_xburst_mbox0 () ;
 int mips_rd_xburst_mbox1 () ;
 int mips_wr_xburst_core_sts (int) ;

void
platform_ipi_clear(void)
{
 int cpuid = PCPU_GET(cpuid);
 uint32_t action;

 action = (cpuid == 0) ? mips_rd_xburst_mbox0() : mips_rd_xburst_mbox1();
 KASSERT(action == 1, ("CPU %d: unexpected IPIs: %#x", cpuid, action));
 mips_wr_xburst_core_sts(~(JZ_CORESTS_MIRQ0P << cpuid));
}
