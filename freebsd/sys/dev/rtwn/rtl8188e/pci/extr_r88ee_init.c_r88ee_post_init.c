
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {scalar_t__ sc_ratectl_sysctl; scalar_t__ sc_ratectl; } ;


 scalar_t__ R88E_MACID_NO_LINK ;
 int R88E_TX_RPT1_ENA ;
 int R88E_TX_RPT_CTRL ;
 scalar_t__ R92C_PCIE_CTRL_REG ;
 int RTWN_MACID_BC ;
 scalar_t__ RTWN_RATECTL_FW ;
 scalar_t__ RTWN_RATECTL_NET80211 ;
 int r88e_iq_calib (struct rtwn_softc*) ;
 int r88e_macid_enable_link (struct rtwn_softc*,int ,int) ;
 int r92c_lc_calib (struct rtwn_softc*) ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int ,int ) ;
 int rtwn_write_1 (struct rtwn_softc*,scalar_t__,int ) ;
 int rtwn_write_4 (struct rtwn_softc*,scalar_t__,int) ;

void
r88ee_post_init(struct rtwn_softc *sc)
{


 rtwn_setbits_1(sc, R88E_TX_RPT_CTRL, 0, R88E_TX_RPT1_ENA);


 rtwn_write_4(sc, R88E_MACID_NO_LINK, 0xffffffff);
 rtwn_write_4(sc, R88E_MACID_NO_LINK + 4, 0xffffffff);
 r88e_macid_enable_link(sc, RTWN_MACID_BC, 1);


 r88e_iq_calib(sc);

 r92c_lc_calib(sc);


 rtwn_write_1(sc, R92C_PCIE_CTRL_REG + 1, 0);

 if (sc->sc_ratectl_sysctl == RTWN_RATECTL_FW) {

  sc->sc_ratectl = RTWN_RATECTL_NET80211;
 } else
  sc->sc_ratectl = sc->sc_ratectl_sysctl;
}
