
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int sc_flags; scalar_t__ sc_ratectl_sysctl; scalar_t__ sc_ratectl; struct r92c_softc* sc_priv; } ;
struct r92c_softc {int rs_c2h_timeout; int rs_c2h_report; } ;


 int R92C_BCN_MAX_ERR ;
 int R92C_FWHW_TXQ_CTRL ;
 int R92C_FWHW_TXQ_CTRL_AMPDU_RTY_NEW ;
 int RTWN_FW_LOADED ;
 scalar_t__ RTWN_RATECTL_FW ;
 scalar_t__ RTWN_RATECTL_NET80211 ;
 scalar_t__ RTWN_RATECTL_NONE ;
 int callout_reset (int *,int ,int ,struct rtwn_softc*) ;
 int r92c_handle_c2h_report ;
 int r92c_lc_calib (struct rtwn_softc*) ;
 int r92c_pa_bias_init (struct rtwn_softc*) ;
 int r92ce_iq_calib (struct rtwn_softc*) ;
 int rtwn_write_1 (struct rtwn_softc*,int,int) ;
 int rtwn_write_2 (struct rtwn_softc*,int ,int) ;

void
r92ce_post_init(struct rtwn_softc *sc)
{
 rtwn_write_2(sc, R92C_FWHW_TXQ_CTRL,
     0x1f00 | R92C_FWHW_TXQ_CTRL_AMPDU_RTY_NEW);

 rtwn_write_1(sc, R92C_BCN_MAX_ERR, 0xff);


 r92ce_iq_calib(sc);

 r92c_lc_calib(sc);

 r92c_pa_bias_init(sc);


 rtwn_write_1(sc, 0x15, 0xe9);


 if (sc->sc_flags & RTWN_FW_LOADED) {
  struct r92c_softc *rs = sc->sc_priv;

  if (sc->sc_ratectl_sysctl == RTWN_RATECTL_FW) {

   sc->sc_ratectl = RTWN_RATECTL_NET80211;
  } else
   sc->sc_ratectl = sc->sc_ratectl_sysctl;


  callout_reset(&rs->rs_c2h_report, rs->rs_c2h_timeout,
      r92c_handle_c2h_report, sc);
 } else

  sc->sc_ratectl = RTWN_RATECTL_NONE;
}
