
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct jz4780_clk_pll_sc {int clk_reg; } ;
struct clknode {int dummy; } ;


 int CGU_PLL_BP ;
 int CGU_PLL_EN ;
 int CGU_PLL_M ;
 int CGU_PLL_N ;
 int CGU_PLL_OD ;
 int CLK_RD_4 (struct jz4780_clk_pll_sc*,int ) ;
 int EINVAL ;
 scalar_t__ REG_GET (int,int ) ;
 struct jz4780_clk_pll_sc* clknode_get_softc (struct clknode*) ;

__attribute__((used)) static int
jz4780_clk_pll_recalc_freq(struct clknode *clk, uint64_t *freq)
{
 struct jz4780_clk_pll_sc *sc;
 uint32_t reg, m, n, od;

 sc = clknode_get_softc(clk);
 reg = CLK_RD_4(sc, sc->clk_reg);


 if (REG_GET(reg, CGU_PLL_EN) == 0) {
  *freq = 0;
  return 0;
 }


 if (REG_GET(reg, CGU_PLL_BP) != 0)
  return 0;

 m = REG_GET(reg, CGU_PLL_M) + 1;
 n = REG_GET(reg, CGU_PLL_N) + 1;
 od = REG_GET(reg, CGU_PLL_OD) + 1;


 if (m == 0 || n == 0 || od == 0) {
  *freq = 0;
  return (EINVAL);
 }

 *freq = ((*freq / n) * m) / od;
 return (0);
}
