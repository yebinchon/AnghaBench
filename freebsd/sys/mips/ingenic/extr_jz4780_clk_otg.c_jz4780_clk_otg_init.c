
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jz4780_clk_otg_sc {int dummy; } ;
struct clknode {int dummy; } ;
typedef int device_t ;


 int CLK_LOCK (struct jz4780_clk_otg_sc*) ;
 int CLK_RD_4 (struct jz4780_clk_otg_sc*,int ) ;
 int CLK_UNLOCK (struct jz4780_clk_otg_sc*) ;
 int CLK_WR_4 (struct jz4780_clk_otg_sc*,int ,int ) ;
 int JZ_USBPCR1 ;
 int PCR_REFCLK_CORE ;
 int PCR_REFCLK_M ;
 struct jz4780_clk_otg_sc* clknode_get_softc (struct clknode*) ;
 int clknode_init_parent_idx (struct clknode*,int ) ;

__attribute__((used)) static int
jz4780_clk_otg_init(struct clknode *clk, device_t dev)
{
 struct jz4780_clk_otg_sc *sc;
 uint32_t reg;

 sc = clknode_get_softc(clk);
 CLK_LOCK(sc);

 reg = CLK_RD_4(sc, JZ_USBPCR1);
 reg &= ~PCR_REFCLK_M;
 reg |= PCR_REFCLK_CORE;
 CLK_WR_4(sc, JZ_USBPCR1, reg);
 CLK_UNLOCK(sc);

 clknode_init_parent_idx(clk, 0);
 return (0);
}
