
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mips_wr_xburst_mbox0 (int) ;
 int mips_wr_xburst_mbox1 (int) ;

void
platform_ipi_send(int cpuid)
{

 if (cpuid == 0)
  mips_wr_xburst_mbox0(1);
 else
  mips_wr_xburst_mbox1(1);
}
