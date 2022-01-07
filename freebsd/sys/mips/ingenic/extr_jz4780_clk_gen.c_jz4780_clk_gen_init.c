
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct jz4780_clk_gen_sc {TYPE_2__* clk_descr; } ;
struct clknode {int dummy; } ;
typedef int device_t ;
struct TYPE_3__ {unsigned int mux_bits; int mux_shift; int mux_map; int mux_reg; } ;
struct TYPE_4__ {int clk_type; TYPE_1__ clk_mux; } ;


 int CLK_LOCK (struct jz4780_clk_gen_sc*) ;
 int CLK_MASK_MUX ;
 int CLK_RD_4 (struct jz4780_clk_gen_sc*,int ) ;
 int CLK_UNLOCK (struct jz4780_clk_gen_sc*) ;
 struct jz4780_clk_gen_sc* clknode_get_softc (struct clknode*) ;
 int clknode_init_parent_idx (struct clknode*,int) ;
 int reg_to_mux (int,int ) ;

__attribute__((used)) static int
jz4780_clk_gen_init(struct clknode *clk, device_t dev)
{
 struct jz4780_clk_gen_sc *sc;
 uint32_t reg, msk, parent_idx;

 sc = clknode_get_softc(clk);
 CLK_LOCK(sc);

 if (sc->clk_descr->clk_type & CLK_MASK_MUX) {
  msk = (1u << sc->clk_descr->clk_mux.mux_bits) - 1;
  reg = CLK_RD_4(sc, sc->clk_descr->clk_mux.mux_reg);
  reg = (reg >> sc->clk_descr->clk_mux.mux_shift) & msk;
  parent_idx = reg_to_mux(reg, sc->clk_descr->clk_mux.mux_map);
 } else
  parent_idx = 0;
 CLK_UNLOCK(sc);

 clknode_init_parent_idx(clk, parent_idx);
 return (0);
}
