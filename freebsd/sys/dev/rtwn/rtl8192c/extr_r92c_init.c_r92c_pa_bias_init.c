
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int nrxchains; struct r92c_softc* sc_priv; } ;
struct r92c_softc {int pa_setting; } ;


 int R92C_RF_IPA ;
 int r92c_rf_write (struct rtwn_softc*,int,int ,int) ;
 int rtwn_setbits_1 (struct rtwn_softc*,int,int,int) ;

void
r92c_pa_bias_init(struct rtwn_softc *sc)
{
 struct r92c_softc *rs = sc->sc_priv;
 int i;

 for (i = 0; i < sc->nrxchains; i++) {
  if (rs->pa_setting & (1 << i))
   continue;
  r92c_rf_write(sc, i, R92C_RF_IPA, 0x0f406);
  r92c_rf_write(sc, i, R92C_RF_IPA, 0x4f406);
  r92c_rf_write(sc, i, R92C_RF_IPA, 0x8f406);
  r92c_rf_write(sc, i, R92C_RF_IPA, 0xcf406);
 }
 if (!(rs->pa_setting & 0x10))
  rtwn_setbits_1(sc, 0x16, 0xf0, 0x90);
}
