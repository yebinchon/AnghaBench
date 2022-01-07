
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct jz4780_clock_softc {int clkdom; int dev; } ;
typedef int * clk_t ;


 int JZ4780_CLK_OTGPHY ;
 scalar_t__ clk_get_by_id (int ,int ,int ,int **) ;
 scalar_t__ clk_get_freq (int *,int *) ;
 scalar_t__ clk_get_parent (int *,int **) ;
 int clk_release (int *) ;
 scalar_t__ clk_set_freq (int *,int ,int ) ;

__attribute__((used)) static int
jz4780_ehci_clk_config(struct jz4780_clock_softc *sc)
{
 clk_t phy_clk, ext_clk;
 uint64_t phy_freq;
 int err;

 phy_clk = ((void*)0);
 ext_clk = ((void*)0);
 err = -1;


 if (clk_get_by_id(sc->dev, sc->clkdom, JZ4780_CLK_OTGPHY,
     &phy_clk) != 0)
  goto done;
 if (clk_get_parent(phy_clk, &ext_clk) != 0)
  goto done;
 if (clk_get_freq(ext_clk, &phy_freq) != 0)
  goto done;
 if (clk_set_freq(phy_clk, phy_freq, 0) != 0)
  goto done;
 err = 0;
done:
 clk_release(ext_clk);
 clk_release(phy_clk);

 return (err);
}
