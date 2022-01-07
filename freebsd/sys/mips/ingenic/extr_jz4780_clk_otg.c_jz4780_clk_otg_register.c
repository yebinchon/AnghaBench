
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct mtx {int dummy; } ;
struct jz4780_clk_otg_sc {struct resource* clk_res; struct mtx* clk_mtx; } ;
struct clknode_init_def {int dummy; } ;
struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;


 struct clknode* clknode_create (struct clkdom*,int *,struct clknode_init_def*) ;
 struct jz4780_clk_otg_sc* clknode_get_softc (struct clknode*) ;
 int clknode_register (struct clkdom*,struct clknode*) ;
 int jz4780_clk_otg_class ;

int jz4780_clk_otg_register(struct clkdom *clkdom,
    struct clknode_init_def *clkdef, struct mtx *dev_mtx,
    struct resource *mem_res)
{
 struct clknode *clk;
 struct jz4780_clk_otg_sc *sc;

 clk = clknode_create(clkdom, &jz4780_clk_otg_class, clkdef);
 if (clk == ((void*)0))
  return (1);

 sc = clknode_get_softc(clk);
 sc->clk_mtx = dev_mtx;
 sc->clk_res = mem_res;
 clknode_register(clkdom, clk);
 return (0);
}
