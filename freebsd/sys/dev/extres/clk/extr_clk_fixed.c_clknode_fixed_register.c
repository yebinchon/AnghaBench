
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clknode_fixed_sc {int div; int mult; int freq; int fixed_flags; } ;
struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;
struct clk_fixed_def {int div; int mult; int freq; int fixed_flags; int clkdef; } ;


 struct clknode* clknode_create (struct clkdom*,int *,int *) ;
 int clknode_fixed_class ;
 struct clknode_fixed_sc* clknode_get_softc (struct clknode*) ;
 int clknode_register (struct clkdom*,struct clknode*) ;

int
clknode_fixed_register(struct clkdom *clkdom, struct clk_fixed_def *clkdef)
{
 struct clknode *clk;
 struct clknode_fixed_sc *sc;

 clk = clknode_create(clkdom, &clknode_fixed_class, &clkdef->clkdef);
 if (clk == ((void*)0))
  return (1);

 sc = clknode_get_softc(clk);
 sc->fixed_flags = clkdef->fixed_flags;
 sc->freq = clkdef->freq;
 sc->mult = clkdef->mult;
 sc->div = clkdef->div;

 clknode_register(clkdom, clk);
 return (0);
}
