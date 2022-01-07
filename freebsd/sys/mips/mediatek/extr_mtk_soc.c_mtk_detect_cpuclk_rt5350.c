
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int MTK_CPU_CLK_300MHZ ;
 int MTK_CPU_CLK_320MHZ ;
 int MTK_CPU_CLK_360MHZ ;
 int MTK_CPU_CLK_UNKNOWN ;
 int RT5350_CPU_CLKSEL_MSK ;
 int RT5350_CPU_CLKSEL_OFF1 ;
 int RT5350_CPU_CLKSEL_OFF2 ;
 int SYSCTL_SYSCFG ;
 int bus_space_read_4 (int ,int ,int ) ;

__attribute__((used)) static uint32_t
mtk_detect_cpuclk_rt5350(bus_space_tag_t bst, bus_space_handle_t bsh)
{
 uint32_t val1, val2;

 val1 = val2 = bus_space_read_4(bst, bsh, SYSCTL_SYSCFG);

 val1 >>= RT5350_CPU_CLKSEL_OFF1;
 val2 >>= RT5350_CPU_CLKSEL_OFF2;
 val1 &= RT5350_CPU_CLKSEL_MSK;
 val2 &= RT5350_CPU_CLKSEL_MSK;
 val1 |= (val2 << 1);

 switch (val1) {
 case 0:
  return (MTK_CPU_CLK_360MHZ);
 case 1:

  return (MTK_CPU_CLK_UNKNOWN);
 case 2:
  return (MTK_CPU_CLK_320MHZ);
 case 3:
  return (MTK_CPU_CLK_300MHZ);
 }


 return (0);
}
