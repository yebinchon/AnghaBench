
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int sc_flags; } ;


 int RTWN_FW_LOADED ;
 int r12a_iq_calib_fw (struct rtwn_softc*) ;
 scalar_t__ rtwn_r12a_iq_calib_fw_supported (struct rtwn_softc*) ;
 int rtwn_r12a_iq_calib_sw (struct rtwn_softc*) ;

void
r12a_iq_calib(struct rtwn_softc *sc)
{

 if ((sc->sc_flags & RTWN_FW_LOADED) &&
     rtwn_r12a_iq_calib_fw_supported(sc))
  r12a_iq_calib_fw(sc);
 else

  rtwn_r12a_iq_calib_sw(sc);
}
