
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int f_max; } ;
struct jz4780_mmc_softc {int sc_clk; TYPE_1__ sc_host; int sc_dev; } ;


 int clk_enable (int ) ;
 int clk_get_by_ofw_name (int ,int ,char*,int *) ;
 int clk_release (int ) ;
 int clk_set_freq (int ,int ,int ) ;

__attribute__((used)) static int
jz4780_mmc_enable_clock(struct jz4780_mmc_softc *sc)
{
 int err;

 err = clk_get_by_ofw_name(sc->sc_dev, 0, "mmc", &sc->sc_clk);
 if (err == 0)
  err = clk_enable(sc->sc_clk);
 if (err == 0)
  err = clk_set_freq(sc->sc_clk, sc->sc_host.f_max, 0);
 if (err != 0)
  clk_release(sc->sc_clk);
 return (err);
}
