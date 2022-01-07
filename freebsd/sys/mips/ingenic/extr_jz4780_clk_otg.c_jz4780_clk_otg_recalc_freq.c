
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct jz4780_clk_otg_sc {int dummy; } ;
struct clknode {int dummy; } ;
struct TYPE_3__ {int freq; int div_val; } ;


 int CLK_RD_4 (struct jz4780_clk_otg_sc*,int ) ;
 int JZ_USBPCR1 ;
 int PCR_CLK_M ;
 struct jz4780_clk_otg_sc* clknode_get_softc (struct clknode*) ;
 int nitems (TYPE_1__*) ;
 TYPE_1__* otg_div_table ;

__attribute__((used)) static int
jz4780_clk_otg_recalc_freq(struct clknode *clk, uint64_t *freq)
{
 struct jz4780_clk_otg_sc *sc;
 uint32_t reg;
 int i;

 sc = clknode_get_softc(clk);
 reg = CLK_RD_4(sc, JZ_USBPCR1);
 reg &= PCR_CLK_M;

 for (i = 0; i < nitems(otg_div_table); i++)
  if (otg_div_table[i].div_val == reg)
   *freq = otg_div_table[i].freq;
 return (0);
}
