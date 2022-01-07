
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int MTK_CPU_CLK_320MHZ ;
 int MTK_CPU_CLK_384MHZ ;
 int RT305X_CPU_CLKSEL_MSK ;
 int RT305X_CPU_CLKSEL_OFF ;
 int RT3350_CHIPID0_3 ;
 int SYSCTL_CHIPID0_3 ;
 int SYSCTL_SYSCFG ;
 int bus_space_read_4 (int ,int ,int ) ;

__attribute__((used)) static uint32_t
mtk_detect_cpuclk_rt305x(bus_space_tag_t bst, bus_space_handle_t bsh)
{
 uint32_t val;

 val = bus_space_read_4(bst, bsh, SYSCTL_CHIPID0_3);
 if (val == RT3350_CHIPID0_3)
  return (MTK_CPU_CLK_320MHZ);

 val = bus_space_read_4(bst, bsh, SYSCTL_SYSCFG);
 val >>= RT305X_CPU_CLKSEL_OFF;
 val &= RT305X_CPU_CLKSEL_MSK;

 return ((val == 0) ? MTK_CPU_CLK_320MHZ : MTK_CPU_CLK_384MHZ);
}
