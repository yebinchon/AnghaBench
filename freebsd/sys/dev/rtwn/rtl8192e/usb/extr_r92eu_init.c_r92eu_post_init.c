
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int sc_flags; scalar_t__ sc_ratectl_sysctl; scalar_t__ sc_ratectl; } ;


 int R92C_ACLK_MON ;
 int R92C_QUEUE_CTRL ;
 int R92C_USB_HRPWM ;
 int RTWN_FW_LOADED ;
 scalar_t__ RTWN_RATECTL_FW ;
 scalar_t__ RTWN_RATECTL_NET80211 ;
 scalar_t__ RTWN_RATECTL_NONE ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int,int ) ;
 int rtwn_write_1 (struct rtwn_softc*,int ,int ) ;

void
r92eu_post_init(struct rtwn_softc *sc)
{


 rtwn_setbits_1(sc, R92C_QUEUE_CTRL, 0x08, 0);


 rtwn_write_1(sc, R92C_ACLK_MON, 0);

 rtwn_write_1(sc, R92C_USB_HRPWM, 0);


 if (sc->sc_flags & RTWN_FW_LOADED) {
  if (sc->sc_ratectl_sysctl == RTWN_RATECTL_FW) {

   sc->sc_ratectl = RTWN_RATECTL_NET80211;
  } else
   sc->sc_ratectl = sc->sc_ratectl_sysctl;
 } else

  sc->sc_ratectl = RTWN_RATECTL_NONE;
}
