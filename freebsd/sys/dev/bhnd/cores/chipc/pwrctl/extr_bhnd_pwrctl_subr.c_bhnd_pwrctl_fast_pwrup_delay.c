
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct bhnd_pwrctl_softc {int res; } ;


 int CHIPC_PLL_ON_DELAY ;
 int bhnd_bus_read_4 (int ,int ) ;
 int bhnd_pwrctl_slowclk_freq (struct bhnd_pwrctl_softc*,int) ;

u_int
bhnd_pwrctl_fast_pwrup_delay(struct bhnd_pwrctl_softc *sc)
{
 u_int pll_on_delay, slowminfreq;
 u_int fpdelay;

 fpdelay = 0;

 slowminfreq = bhnd_pwrctl_slowclk_freq(sc, 0);

 pll_on_delay = bhnd_bus_read_4(sc->res, CHIPC_PLL_ON_DELAY) + 2;
 pll_on_delay *= 1000000;
 pll_on_delay += (slowminfreq - 1);
 fpdelay = pll_on_delay / slowminfreq;

 return (fpdelay);
}
