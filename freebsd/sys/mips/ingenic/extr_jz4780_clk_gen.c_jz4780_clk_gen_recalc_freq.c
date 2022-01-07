
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct jz4780_clk_gen_sc {TYPE_2__* clk_descr; } ;
struct clknode {int dummy; } ;
struct TYPE_3__ {unsigned int div_bits; int div_shift; int div_lg; int div_reg; } ;
struct TYPE_4__ {int clk_type; TYPE_1__ clk_div; } ;


 int CLK_MASK_DIV ;
 int CLK_RD_4 (struct jz4780_clk_gen_sc*,int ) ;
 struct jz4780_clk_gen_sc* clknode_get_softc (struct clknode*) ;

__attribute__((used)) static int
jz4780_clk_gen_recalc_freq(struct clknode *clk, uint64_t *freq)
{
 struct jz4780_clk_gen_sc *sc;
 uint32_t reg;

 sc = clknode_get_softc(clk);


 if (sc->clk_descr->clk_type & CLK_MASK_DIV) {
  uint32_t msk;

  msk = (1u << sc->clk_descr->clk_div.div_bits) - 1;
  reg = CLK_RD_4(sc, sc->clk_descr->clk_div.div_reg);
  reg = (reg >> sc->clk_descr->clk_div.div_shift) & msk;
  reg = (reg + 1) << sc->clk_descr->clk_div.div_lg;
  *freq /= reg;
 }
 return (0);
}
