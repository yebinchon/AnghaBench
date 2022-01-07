
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct jz4780_clk_gen_sc {TYPE_2__* clk_descr; } ;
struct clknode {int dummy; } ;
struct TYPE_3__ {unsigned int mux_bits; int mux_shift; int mux_reg; int mux_map; } ;
struct TYPE_4__ {int clk_type; TYPE_1__ clk_mux; } ;


 int CLK_LOCK (struct jz4780_clk_gen_sc*) ;
 int CLK_MASK_MUX ;
 int CLK_RD_4 (struct jz4780_clk_gen_sc*,int ) ;
 int CLK_UNLOCK (struct jz4780_clk_gen_sc*) ;
 int CLK_WR_4 (struct jz4780_clk_gen_sc*,int ,int) ;
 int EINVAL ;
 struct jz4780_clk_gen_sc* clknode_get_softc (struct clknode*) ;
 int mux_to_reg (int,int ) ;

__attribute__((used)) static int
jz4780_clk_gen_set_mux(struct clknode *clk, int src)
{
 struct jz4780_clk_gen_sc *sc;
 uint32_t reg, msk;

 sc = clknode_get_softc(clk);


 if (!(sc->clk_descr->clk_type & CLK_MASK_MUX))
  return (src ? EINVAL : 0);

 msk = (1u << sc->clk_descr->clk_mux.mux_bits) - 1;
 src = mux_to_reg(src & msk, sc->clk_descr->clk_mux.mux_map);

 CLK_LOCK(sc);
 reg = CLK_RD_4(sc, sc->clk_descr->clk_mux.mux_reg);
 reg &= ~(msk << sc->clk_descr->clk_mux.mux_shift);
 reg |= (src << sc->clk_descr->clk_mux.mux_shift);
 CLK_WR_4(sc, sc->clk_descr->clk_mux.mux_reg, reg);
 CLK_UNLOCK(sc);

 return (0);
}
