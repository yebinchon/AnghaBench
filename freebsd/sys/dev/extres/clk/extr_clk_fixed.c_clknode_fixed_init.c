
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clknode_fixed_sc {scalar_t__ freq; } ;
struct clknode {int dummy; } ;
typedef int device_t ;


 struct clknode_fixed_sc* clknode_get_softc (struct clknode*) ;
 int clknode_init_parent_idx (struct clknode*,int ) ;

__attribute__((used)) static int
clknode_fixed_init(struct clknode *clk, device_t dev)
{
 struct clknode_fixed_sc *sc;

 sc = clknode_get_softc(clk);
 if (sc->freq == 0)
  clknode_init_parent_idx(clk, 0);
 return(0);
}
