
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int AR724X_AHB_DIV_MASK ;
 int AR724X_AHB_DIV_SHIFT ;
 int AR724X_BASE_FREQ ;
 int AR724X_DDR_DIV_MASK ;
 int AR724X_DDR_DIV_SHIFT ;
 int AR724X_PLL_DIV_MASK ;
 int AR724X_PLL_DIV_SHIFT ;
 int AR724X_PLL_REF_DIV_MASK ;
 int AR724X_PLL_REF_DIV_SHIFT ;
 int AR724X_PLL_REG_CPU_CONFIG ;
 int ATH_READ_REG (int ) ;
 int u_ar71xx_ahb_freq ;
 int u_ar71xx_cpu_freq ;
 int u_ar71xx_ddr_freq ;
 int u_ar71xx_mdio_freq ;
 int u_ar71xx_refclk ;
 int u_ar71xx_uart_freq ;
 int u_ar71xx_wdt_freq ;

__attribute__((used)) static void
ar724x_chip_detect_sys_frequency(void)
{
 uint32_t pll;
 uint32_t freq;
 uint32_t div;

 u_ar71xx_mdio_freq = u_ar71xx_refclk = AR724X_BASE_FREQ;

 pll = ATH_READ_REG(AR724X_PLL_REG_CPU_CONFIG);

 div = ((pll >> AR724X_PLL_DIV_SHIFT) & AR724X_PLL_DIV_MASK);
 freq = div * AR724X_BASE_FREQ;

 div = ((pll >> AR724X_PLL_REF_DIV_SHIFT) & AR724X_PLL_REF_DIV_MASK);
 freq *= div;

 u_ar71xx_cpu_freq = freq;

 div = ((pll >> AR724X_DDR_DIV_SHIFT) & AR724X_DDR_DIV_MASK) + 1;
 u_ar71xx_ddr_freq = freq / div;

 div = (((pll >> AR724X_AHB_DIV_SHIFT) & AR724X_AHB_DIV_MASK) + 1) * 2;
 u_ar71xx_ahb_freq = u_ar71xx_cpu_freq / div;
 u_ar71xx_wdt_freq = u_ar71xx_cpu_freq / div;
 u_ar71xx_uart_freq = u_ar71xx_cpu_freq / div;
}
