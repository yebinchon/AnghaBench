
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_regwin {int rw_rev; } ;
struct bwi_softc {scalar_t__ sc_bbp_id; int sc_bbp_rev; int sc_cap; struct bwi_regwin sc_com_regwin; } ;
struct bwi_clock_freq {int clkfreq_max; } ;


 scalar_t__ BWI_BBPID_BCM4321 ;
 int BWI_CAP_CLKMODE ;
 int BWI_CLOCK_INFO ;
 int BWI_CONTROL ;
 int BWI_CONTROL_MAGIC0 ;
 int BWI_CONTROL_MAGIC1 ;
 int BWI_FREQ_SEL_DELAY ;
 int BWI_PLL_ON_DELAY ;
 int BWI_REGWIN_EXIST (struct bwi_regwin*) ;
 int CSR_FILT_SETBITS_4 (struct bwi_softc*,int ,int,int) ;
 int CSR_WRITE_4 (struct bwi_softc*,int ,int ) ;
 int bwi_get_clock_freq (struct bwi_softc*,struct bwi_clock_freq*) ;
 int bwi_regwin_switch (struct bwi_softc*,struct bwi_regwin*,struct bwi_regwin**) ;
 int howmany (int,int) ;

__attribute__((used)) static int
bwi_set_clock_delay(struct bwi_softc *sc)
{
 struct bwi_regwin *old, *com;
 int error;

 com = &sc->sc_com_regwin;
 if (!BWI_REGWIN_EXIST(com))
  return 0;

 error = bwi_regwin_switch(sc, com, &old);
 if (error)
  return error;

 if (sc->sc_bbp_id == BWI_BBPID_BCM4321) {
  if (sc->sc_bbp_rev == 0)
   CSR_WRITE_4(sc, BWI_CONTROL, BWI_CONTROL_MAGIC0);
  else if (sc->sc_bbp_rev == 1)
   CSR_WRITE_4(sc, BWI_CONTROL, BWI_CONTROL_MAGIC1);
 }

 if (sc->sc_cap & BWI_CAP_CLKMODE) {
  if (com->rw_rev >= 10) {
   CSR_FILT_SETBITS_4(sc, BWI_CLOCK_INFO, 0xffff, 0x40000);
  } else {
   struct bwi_clock_freq freq;

   bwi_get_clock_freq(sc, &freq);
   CSR_WRITE_4(sc, BWI_PLL_ON_DELAY,
    howmany(freq.clkfreq_max * 150, 1000000));
   CSR_WRITE_4(sc, BWI_FREQ_SEL_DELAY,
    howmany(freq.clkfreq_max * 15, 1000000));
  }
 }

 return bwi_regwin_switch(sc, old, ((void*)0));
}
