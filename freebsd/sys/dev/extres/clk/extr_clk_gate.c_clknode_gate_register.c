
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clknode_gate_sc {int gate_flags; int off_value; int on_value; int mask; int shift; int offset; } ;
struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;
struct clk_gate_def {int gate_flags; int off_value; int on_value; int mask; int shift; int offset; int clkdef; } ;


 struct clknode* clknode_create (struct clkdom*,int *,int *) ;
 int clknode_gate_class ;
 struct clknode_gate_sc* clknode_get_softc (struct clknode*) ;
 int clknode_register (struct clkdom*,struct clknode*) ;

int
clknode_gate_register(struct clkdom *clkdom, struct clk_gate_def *clkdef)
{
 struct clknode *clk;
 struct clknode_gate_sc *sc;

 clk = clknode_create(clkdom, &clknode_gate_class, &clkdef->clkdef);
 if (clk == ((void*)0))
  return (1);

 sc = clknode_get_softc(clk);
 sc->offset = clkdef->offset;
 sc->shift = clkdef->shift;
 sc->mask = clkdef->mask;
 sc->on_value = clkdef->on_value;
 sc->off_value = clkdef->off_value;
 sc->gate_flags = clkdef->gate_flags;

 clknode_register(clkdom, clk);
 return (0);
}
