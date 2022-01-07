
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct clknode_mux_sc {int mask; int shift; int offset; } ;
struct clknode {int dummy; } ;


 int DEVICE_LOCK (struct clknode*) ;
 int DEVICE_UNLOCK (struct clknode*) ;
 int MD4 (struct clknode*,int ,int,int) ;
 int RD4 (struct clknode*,int ,int *) ;
 struct clknode_mux_sc* clknode_get_softc (struct clknode*) ;

__attribute__((used)) static int
clknode_mux_set_mux(struct clknode *clk, int idx)
{
 uint32_t reg;
 struct clknode_mux_sc *sc;
 int rv;

 sc = clknode_get_softc(clk);

 DEVICE_LOCK(clk);
 rv = MD4(clk, sc->offset, sc->mask << sc->shift,
     (idx & sc->mask) << sc->shift);
 if (rv != 0) {
  DEVICE_UNLOCK(clk);
  return (rv);
 }
 RD4(clk, sc->offset, &reg);
 DEVICE_UNLOCK(clk);

 return(0);
}
