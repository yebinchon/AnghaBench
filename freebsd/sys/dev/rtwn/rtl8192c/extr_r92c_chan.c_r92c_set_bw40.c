
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtwn_softc {struct r92c_softc* sc_priv; } ;
struct r92c_softc {int* rf_chnlbw; } ;


 scalar_t__ R92C_BWOPMODE ;
 int R92C_BWOPMODE_20MHZ ;
 int R92C_CCK0_SYSTEM ;
 int R92C_FPGA0_ANAPARAM2 ;
 int R92C_FPGA0_ANAPARAM2_CBW20 ;
 int R92C_FPGA0_RFMOD ;
 int R92C_FPGA1_RFMOD ;
 int R92C_OFDM1_LSTF ;
 int R92C_RFMOD_40MHZ ;
 int R92C_RF_CHNLBW ;
 scalar_t__ R92C_RRSR ;
 int rtwn_bb_setbits (struct rtwn_softc*,int,int,int) ;
 int rtwn_rf_write (struct rtwn_softc*,int ,int ,int) ;
 int rtwn_setbits_1 (struct rtwn_softc*,scalar_t__,int,int) ;

__attribute__((used)) static void
r92c_set_bw40(struct rtwn_softc *sc, uint8_t chan, int prichlo)
{
 struct r92c_softc *rs = sc->sc_priv;

 rtwn_setbits_1(sc, R92C_BWOPMODE, R92C_BWOPMODE_20MHZ, 0);
 rtwn_setbits_1(sc, R92C_RRSR + 2, 0x6f, (prichlo ? 1 : 2) << 5);

 rtwn_bb_setbits(sc, R92C_FPGA0_RFMOD, 0, R92C_RFMOD_40MHZ);
 rtwn_bb_setbits(sc, R92C_FPGA1_RFMOD, 0, R92C_RFMOD_40MHZ);


 rtwn_bb_setbits(sc, R92C_CCK0_SYSTEM, 0x10,
     (prichlo ? 0 : 1) << 4);

 rtwn_bb_setbits(sc, R92C_OFDM1_LSTF, 0x0c00,
     (prichlo ? 1 : 2) << 10);

 rtwn_bb_setbits(sc, R92C_FPGA0_ANAPARAM2,
     R92C_FPGA0_ANAPARAM2_CBW20, 0);

 rtwn_bb_setbits(sc, 0x818, 0x0c000000, (prichlo ? 2 : 1) << 26);


 rtwn_rf_write(sc, 0, R92C_RF_CHNLBW,
     (rs->rf_chnlbw[0] & ~0xfff) | chan);
}
