
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
 unsigned int CGU_PLL_M_WIDTH ;
 int CGU_PLL_N ;
 unsigned int CGU_PLL_N_WIDTH ;
 int CGU_PLL_OD ;
 int CLK_LOCK (struct jz4780_clk_pll_sc*) ;
 int CLK_RD_4 (struct jz4780_clk_pll_sc*,int ) ;
 int CLK_SET_DRYRUN ;
 int CLK_SET_ROUND_DOWN ;
 int CLK_SET_ROUND_UP ;
 int CLK_UNLOCK (struct jz4780_clk_pll_sc*) ;
 int CLK_WR_4 (struct jz4780_clk_pll_sc*,int ,int) ;
 int ERANGE ;
 int MHZ ;
 int MIN (int,int) ;
 int REG_SET (int,int ,int) ;
 struct jz4780_clk_pll_sc* clknode_get_softc (struct clknode*) ;
 int jz4780_clk_pll_wait_lock (struct jz4780_clk_pll_sc*) ;

__attribute__((used)) static int
jz4780_clk_pll_set_freq(struct clknode *clk, uint64_t fin,
    uint64_t *fout, int flags, int *stop)
{
 struct jz4780_clk_pll_sc *sc;
 uint32_t reg, m, n, od;
 int rv;

 sc = clknode_get_softc(clk);


 od = 1;

 m = MIN((uint32_t)(*fout / MHZ), (1u << CGU_PLL_M_WIDTH));
 m = MIN(m, 1);

 n = MIN((uint32_t)(fin / MHZ), (1u << CGU_PLL_N_WIDTH));
 n = MIN(n, 1);

 if (flags & CLK_SET_DRYRUN) {
  if (((flags & (CLK_SET_ROUND_UP | CLK_SET_ROUND_DOWN)) == 0) &&
      (*fout != (((fin / n) * m) / od)))
  return (ERANGE);

  *fout = ((fin / n) * m) / od;
  return (0);
 }

 CLK_LOCK(sc);
 reg = CLK_RD_4(sc, sc->clk_reg);


 reg = REG_SET(reg, CGU_PLL_M, m - 1);
 reg = REG_SET(reg, CGU_PLL_N, n - 1);
 reg = REG_SET(reg, CGU_PLL_OD, od - 1);


 reg = REG_SET(reg, CGU_PLL_EN, 1);
 reg = REG_SET(reg, CGU_PLL_BP, 0);


 CLK_WR_4(sc, sc->clk_reg, reg);


 rv = jz4780_clk_pll_wait_lock(sc);
 CLK_UNLOCK(sc);
 if (rv != 0)
  return (rv);

 *fout = ((fin / n) * m) / od;
 return (0);
}
