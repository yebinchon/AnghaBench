
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
struct urtw_softc {int* sc_txpwr_cck; int* sc_txpwr_ofdm; int sc_mtx; } ;


 int URTW_8225_ANAPARAM2_ON ;
 int URTW_TX_GAIN_CCK ;
 int URTW_TX_GAIN_OFDM ;
 scalar_t__ urtw_8185_set_anaparam2 (struct urtw_softc*,int ) ;
 int urtw_8187_write_phy_cck (struct urtw_softc*,int,int) ;
 int urtw_8187_write_phy_ofdm (struct urtw_softc*,int,int) ;
 int* urtw_8225_tx_gain_cck_ofdm ;
 int* urtw_8225_txpwr_cck ;
 int* urtw_8225_txpwr_cck_ch14 ;
 int* urtw_8225_txpwr_ofdm ;
 int urtw_write8_m (struct urtw_softc*,int ,int) ;
 int usb_pause_mtx (int *,int) ;

__attribute__((used)) static usb_error_t
urtw_8225_set_txpwrlvl(struct urtw_softc *sc, int chan)
{
 int i, idx, set;
 uint8_t *cck_pwltable;
 uint8_t cck_pwrlvl_max, ofdm_pwrlvl_min, ofdm_pwrlvl_max;
 uint8_t cck_pwrlvl = sc->sc_txpwr_cck[chan] & 0xff;
 uint8_t ofdm_pwrlvl = sc->sc_txpwr_ofdm[chan] & 0xff;
 usb_error_t error;

 cck_pwrlvl_max = 11;
 ofdm_pwrlvl_max = 25;
 ofdm_pwrlvl_min = 10;


 cck_pwrlvl = (cck_pwrlvl > cck_pwrlvl_max) ? cck_pwrlvl_max : cck_pwrlvl;
 idx = cck_pwrlvl % 6;
 set = cck_pwrlvl / 6;
 cck_pwltable = (chan == 14) ? urtw_8225_txpwr_cck_ch14 :
     urtw_8225_txpwr_cck;

 urtw_write8_m(sc, URTW_TX_GAIN_CCK,
     urtw_8225_tx_gain_cck_ofdm[set] >> 1);
 for (i = 0; i < 8; i++) {
  urtw_8187_write_phy_cck(sc, 0x44 + i,
      cck_pwltable[idx * 8 + i]);
 }
 usb_pause_mtx(&sc->sc_mtx, 1);


 ofdm_pwrlvl = (ofdm_pwrlvl > (ofdm_pwrlvl_max - ofdm_pwrlvl_min)) ?
     ofdm_pwrlvl_max : ofdm_pwrlvl + ofdm_pwrlvl_min;
 ofdm_pwrlvl = (ofdm_pwrlvl > 35) ? 35 : ofdm_pwrlvl;

 idx = ofdm_pwrlvl % 6;
 set = ofdm_pwrlvl / 6;

 error = urtw_8185_set_anaparam2(sc, URTW_8225_ANAPARAM2_ON);
 if (error)
  goto fail;
 urtw_8187_write_phy_ofdm(sc, 2, 0x42);
 urtw_8187_write_phy_ofdm(sc, 6, 0);
 urtw_8187_write_phy_ofdm(sc, 8, 0);

 urtw_write8_m(sc, URTW_TX_GAIN_OFDM,
     urtw_8225_tx_gain_cck_ofdm[set] >> 1);
 urtw_8187_write_phy_ofdm(sc, 0x5, urtw_8225_txpwr_ofdm[idx]);
 urtw_8187_write_phy_ofdm(sc, 0x7, urtw_8225_txpwr_ofdm[idx]);
 usb_pause_mtx(&sc->sc_mtx, 1);
fail:
 return (error);
}
