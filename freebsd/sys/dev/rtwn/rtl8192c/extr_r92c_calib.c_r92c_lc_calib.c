
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rtwn_softc {int nrxchains; } ;


 scalar_t__ R92C_OFDM1_LSTF ;
 int R92C_RF_AC ;
 int R92C_RF_AC_MODE ;
 int R92C_RF_AC_MODE_STANDBY ;
 int R92C_RF_CHNLBW ;
 int R92C_RF_CHNLBW_LCSTART ;
 scalar_t__ R92C_TXPAUSE ;
 int R92C_TX_QUEUE_ALL ;
 int RW (int ,int ,int ) ;
 int rtwn_delay (struct rtwn_softc*,int) ;
 int rtwn_read_1 (struct rtwn_softc*,scalar_t__) ;
 int rtwn_rf_read (struct rtwn_softc*,int,int ) ;
 int rtwn_rf_setbits (struct rtwn_softc*,int ,int ,int ,int ) ;
 int rtwn_rf_write (struct rtwn_softc*,int,int ,int ) ;
 int rtwn_write_1 (struct rtwn_softc*,scalar_t__,int) ;

void
r92c_lc_calib(struct rtwn_softc *sc)
{
 uint32_t rf_ac[2];
 uint8_t txmode;
 int i;

 txmode = rtwn_read_1(sc, R92C_OFDM1_LSTF + 3);
 if ((txmode & 0x70) != 0) {

  rtwn_write_1(sc, R92C_OFDM1_LSTF + 3, txmode & ~0x70);


  for (i = 0; i < sc->nrxchains; i++) {
   rf_ac[i] = rtwn_rf_read(sc, i, R92C_RF_AC);
   rtwn_rf_write(sc, i, R92C_RF_AC,
       RW(rf_ac[i], R92C_RF_AC_MODE,
    R92C_RF_AC_MODE_STANDBY));
  }
 } else {

  rtwn_write_1(sc, R92C_TXPAUSE, R92C_TX_QUEUE_ALL);
 }

 rtwn_rf_setbits(sc, 0, R92C_RF_CHNLBW, 0, R92C_RF_CHNLBW_LCSTART);


 rtwn_delay(sc, 100000);


 if ((txmode & 0x70) != 0) {

  rtwn_write_1(sc, R92C_OFDM1_LSTF + 3, txmode);

  for (i = 0; i < sc->nrxchains; i++)
   rtwn_rf_write(sc, i, R92C_RF_AC, rf_ac[i]);
 } else {

  rtwn_write_1(sc, R92C_TXPAUSE, 0x00);
 }
}
