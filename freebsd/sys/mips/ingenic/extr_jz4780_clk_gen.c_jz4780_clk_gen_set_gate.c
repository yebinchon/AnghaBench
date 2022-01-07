
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct jz4780_clk_gen_sc {TYPE_1__* clk_descr; } ;
struct clknode {int dummy; } ;
struct TYPE_2__ {scalar_t__ clk_gate_bit; } ;


 int CLK_LOCK (struct jz4780_clk_gen_sc*) ;
 int CLK_RD_4 (struct jz4780_clk_gen_sc*,int) ;
 int CLK_UNLOCK (struct jz4780_clk_gen_sc*) ;
 int CLK_WR_4 (struct jz4780_clk_gen_sc*,int,int) ;
 int JZ_CLKGR0 ;
 int JZ_CLKGR1 ;
 struct jz4780_clk_gen_sc* clknode_get_softc (struct clknode*) ;

__attribute__((used)) static int
jz4780_clk_gen_set_gate(struct clknode *clk, bool enable)
{
 struct jz4780_clk_gen_sc *sc;
 uint32_t off, reg, bit;

 sc = clknode_get_softc(clk);


 if (sc->clk_descr->clk_gate_bit < 0)
  return 0;

 bit = sc->clk_descr->clk_gate_bit;
 if (bit < 32) {
  off = JZ_CLKGR0;
 } else {
  off = JZ_CLKGR1;
  bit -= 32;
 }

 CLK_LOCK(sc);
 reg = CLK_RD_4(sc, off);
 if (enable)
  reg &= ~(1u << bit);
 else
  reg |= (1u << bit);
 CLK_WR_4(sc, off, reg);
 CLK_UNLOCK(sc);

 return (0);
}
