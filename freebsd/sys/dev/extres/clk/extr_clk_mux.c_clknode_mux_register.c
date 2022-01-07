
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clknode_mux_sc {int mask; int mux_flags; int shift; int offset; } ;
struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;
struct clk_mux_def {int width; int mux_flags; int shift; int offset; int clkdef; } ;


 struct clknode* clknode_create (struct clkdom*,int *,int *) ;
 struct clknode_mux_sc* clknode_get_softc (struct clknode*) ;
 int clknode_mux_class ;
 int clknode_register (struct clkdom*,struct clknode*) ;

int
clknode_mux_register(struct clkdom *clkdom, struct clk_mux_def *clkdef)
{
 struct clknode *clk;
 struct clknode_mux_sc *sc;

 clk = clknode_create(clkdom, &clknode_mux_class, &clkdef->clkdef);
 if (clk == ((void*)0))
  return (1);

 sc = clknode_get_softc(clk);
 sc->offset = clkdef->offset;
 sc->shift = clkdef->shift;
 sc->mask = (1 << clkdef->width) - 1;
 sc->mux_flags = clkdef->mux_flags;

 clknode_register(clkdom, clk);
 return (0);
}
