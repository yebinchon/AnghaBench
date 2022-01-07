
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_clock_softc {int clkdom; int dev; } ;
struct clknode {int dummy; } ;


 int ENXIO ;
 int JZ4780_CLK_UHC ;
 int clkdom_unlock (int ) ;
 int clkdom_xlock (int ) ;
 struct clknode* clknode_find_by_id (int ,int ) ;
 int clknode_set_freq (struct clknode*,int,int ,int ) ;
 int clknode_set_parent_by_name (struct clknode*,char*) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
jz4780_clock_fixup(struct jz4780_clock_softc *sc)
{
 struct clknode *clk_uhc;
 int ret;





 clkdom_xlock(sc->clkdom);


 ret = ENXIO;

 clk_uhc = clknode_find_by_id(sc->clkdom, JZ4780_CLK_UHC);
 if (clk_uhc != ((void*)0)) {
  ret = clknode_set_parent_by_name(clk_uhc, "mpll");
  if (ret != 0)
   device_printf(sc->dev,
       "unable to reparent uhc clock\n");
  else
   ret = clknode_set_freq(clk_uhc, 48000000, 0, 0);
  if (ret != 0)
   device_printf(sc->dev, "unable to init uhc clock\n");
 } else
  device_printf(sc->dev, "unable to lookup uhc clock\n");

 clkdom_unlock(sc->clkdom);
 return (ret);
}
