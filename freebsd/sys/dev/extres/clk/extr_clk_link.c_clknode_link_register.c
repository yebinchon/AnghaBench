
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clknode_init_def {int flags; } ;
struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;
struct clk_link_def {struct clknode_init_def clkdef; } ;


 int CLK_NODE_LINKED ;
 struct clknode* clknode_create (struct clkdom*,int *,struct clknode_init_def*) ;
 int clknode_link_class ;
 int clknode_register (struct clkdom*,struct clknode*) ;

int
clknode_link_register(struct clkdom *clkdom, struct clk_link_def *clkdef)
{
 struct clknode *clk;
 struct clknode_init_def tmp;

 tmp = clkdef->clkdef;
 tmp.flags |= CLK_NODE_LINKED;
 clk = clknode_create(clkdom, &clknode_link_class, &tmp);
 if (clk == ((void*)0))
  return (1);
 clknode_register(clkdom, clk);
 return (0);
}
