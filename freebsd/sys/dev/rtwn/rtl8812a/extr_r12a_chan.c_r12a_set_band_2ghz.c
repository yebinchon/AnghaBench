
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtwn_softc {struct r12a_softc* sc_priv; } ;
struct r12a_softc {int rfe_type; } ;


 int R12A_ANTSEL_SW ;
 int R12A_BW_INDICATION ;
 int R12A_CCK_CHECK ;
 int R12A_CCK_RX_PATH ;
 int R12A_OFDMCCK_EN ;
 int R12A_OFDMCCK_EN_CCK ;
 int R12A_OFDMCCK_EN_OFDM ;
 int R12A_PWED_TH ;
 int R12A_RFE_INV (int) ;
 int R12A_RFE_PINMUX (int) ;
 int R12A_TXAGC_TABLE_SELECT ;
 int R12A_TX_PATH ;
 int rtwn_bb_setbits (struct rtwn_softc*,int ,int,int) ;
 int rtwn_bb_write (struct rtwn_softc*,int ,int) ;
 int rtwn_set_basicrates (struct rtwn_softc*,int ) ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int,int ) ;
 int rtwn_write_1 (struct rtwn_softc*,int ,int) ;

void
r12a_set_band_2ghz(struct rtwn_softc *sc, uint32_t basicrates)
{
 struct r12a_softc *rs = sc->sc_priv;


 rtwn_bb_setbits(sc, R12A_OFDMCCK_EN,
     0, R12A_OFDMCCK_EN_CCK | R12A_OFDMCCK_EN_OFDM);

 rtwn_bb_setbits(sc, R12A_BW_INDICATION, 0x02, 0x01);
 rtwn_bb_setbits(sc, R12A_PWED_TH, 0x3e000, 0x2e000);


 rtwn_bb_setbits(sc, R12A_TXAGC_TABLE_SELECT, 0x03, 0);

 switch (rs->rfe_type) {
 case 0:
 case 1:
 case 2:
  rtwn_bb_write(sc, R12A_RFE_PINMUX(0), 0x77777777);
  rtwn_bb_write(sc, R12A_RFE_PINMUX(1), 0x77777777);
  rtwn_bb_setbits(sc, R12A_RFE_INV(0), 0x3ff00000, 0);
  rtwn_bb_setbits(sc, R12A_RFE_INV(1), 0x3ff00000, 0);
  break;
 case 3:
  rtwn_bb_write(sc, R12A_RFE_PINMUX(0), 0x54337770);
  rtwn_bb_write(sc, R12A_RFE_PINMUX(1), 0x54337770);
  rtwn_bb_setbits(sc, R12A_RFE_INV(0), 0x3ff00000, 0x01000000);
  rtwn_bb_setbits(sc, R12A_RFE_INV(1), 0x3ff00000, 0x01000000);
  rtwn_bb_setbits(sc, R12A_ANTSEL_SW, 0x0303, 0x01);
  break;
 case 4:
  rtwn_bb_write(sc, R12A_RFE_PINMUX(0), 0x77777777);
  rtwn_bb_write(sc, R12A_RFE_PINMUX(1), 0x77777777);
  rtwn_bb_setbits(sc, R12A_RFE_INV(0), 0x3ff00000, 0x00100000);
  rtwn_bb_setbits(sc, R12A_RFE_INV(1), 0x3ff00000, 0x00100000);
  break;
 case 5:
  rtwn_write_1(sc, R12A_RFE_PINMUX(0) + 2, 0x77);
  rtwn_bb_write(sc, R12A_RFE_PINMUX(1), 0x77777777);
  rtwn_setbits_1(sc, R12A_RFE_INV(0) + 3, 0x01, 0);
  rtwn_bb_setbits(sc, R12A_RFE_INV(1), 0x3ff00000, 0);
  break;
 default:
  break;
 }

 rtwn_bb_setbits(sc, R12A_TX_PATH, 0xf0, 0x10);
 rtwn_bb_setbits(sc, R12A_CCK_RX_PATH, 0x0f000000, 0x01000000);


 rtwn_set_basicrates(sc, basicrates);

 rtwn_write_1(sc, R12A_CCK_CHECK, 0);
}
