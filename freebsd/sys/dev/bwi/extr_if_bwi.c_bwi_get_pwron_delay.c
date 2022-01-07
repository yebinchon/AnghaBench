
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bwi_regwin {int dummy; } ;
struct bwi_softc {int sc_cap; int sc_pwron_delay; struct bwi_regwin sc_com_regwin; } ;
struct bwi_clock_freq {int clkfreq_min; } ;


 int BWI_CAP_CLKMODE ;
 int BWI_DBG_ATTACH ;
 int BWI_PLL_ON_DELAY ;
 int BWI_REGWIN_EXIST (struct bwi_regwin*) ;
 int CSR_READ_4 (struct bwi_softc*,int ) ;
 int DPRINTF (struct bwi_softc*,int ,char*,int ) ;
 int KASSERT (int ,char*) ;
 int bwi_get_clock_freq (struct bwi_softc*,struct bwi_clock_freq*) ;
 int bwi_regwin_switch (struct bwi_softc*,struct bwi_regwin*,struct bwi_regwin**) ;
 int howmany (int,int ) ;

__attribute__((used)) static int
bwi_get_pwron_delay(struct bwi_softc *sc)
{
 struct bwi_regwin *com, *old;
 struct bwi_clock_freq freq;
 uint32_t val;
 int error;

 com = &sc->sc_com_regwin;
 KASSERT(BWI_REGWIN_EXIST(com), ("no regwin"));

 if ((sc->sc_cap & BWI_CAP_CLKMODE) == 0)
  return 0;

 error = bwi_regwin_switch(sc, com, &old);
 if (error)
  return error;

 bwi_get_clock_freq(sc, &freq);

 val = CSR_READ_4(sc, BWI_PLL_ON_DELAY);
 sc->sc_pwron_delay = howmany((val + 2) * 1000000, freq.clkfreq_min);
 DPRINTF(sc, BWI_DBG_ATTACH, "power on delay %u\n", sc->sc_pwron_delay);

 return bwi_regwin_switch(sc, old, ((void*)0));
}
