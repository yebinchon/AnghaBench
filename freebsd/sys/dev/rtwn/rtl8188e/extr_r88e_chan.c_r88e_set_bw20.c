
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtwn_softc {struct r92c_softc* sc_priv; } ;
struct r92c_softc {int* rf_chnlbw; } ;


 int R88E_RF_CHNLBW_BW20 ;
 int R92C_BWOPMODE ;
 int R92C_BWOPMODE_20MHZ ;
 int R92C_FPGA0_RFMOD ;
 int R92C_FPGA1_RFMOD ;
 int R92C_RFMOD_40MHZ ;
 int R92C_RF_CHNLBW ;
 int rtwn_bb_setbits (struct rtwn_softc*,int ,int ,int ) ;
 int rtwn_rf_write (struct rtwn_softc*,int ,int ,int) ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int ,int ) ;

void
r88e_set_bw20(struct rtwn_softc *sc, uint8_t chan)
{
 struct r92c_softc *rs = sc->sc_priv;

 rtwn_setbits_1(sc, R92C_BWOPMODE, 0, R92C_BWOPMODE_20MHZ);

 rtwn_bb_setbits(sc, R92C_FPGA0_RFMOD, R92C_RFMOD_40MHZ, 0);
 rtwn_bb_setbits(sc, R92C_FPGA1_RFMOD, R92C_RFMOD_40MHZ, 0);


 rtwn_rf_write(sc, 0, R92C_RF_CHNLBW,
     (rs->rf_chnlbw[0] & ~0xfff) | chan | R88E_RF_CHNLBW_BW20);
}
