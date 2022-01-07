
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sec_param {int dummy; } sec_param ;
struct rtwn_softc {scalar_t__ sc_ratectl; scalar_t__ vaps_running; scalar_t__ monvaps_running; int sc_calib_to; } ;


 scalar_t__ RTWN_RATECTL_FW ;
 int callout_reset (int *,int,int ,struct rtwn_softc*) ;
 int hz ;
 int rtwn_calib_to ;
 int rtwn_set_rssi (struct rtwn_softc*) ;
 int rtwn_temp_calib (struct rtwn_softc*) ;

__attribute__((used)) static void
rtwn_calib_cb(struct rtwn_softc *sc, union sec_param *data)
{

 rtwn_temp_calib(sc);


 if (sc->sc_ratectl == RTWN_RATECTL_FW) {

  rtwn_set_rssi(sc);
 }


 if (sc->vaps_running > sc->monvaps_running)
  callout_reset(&sc->sc_calib_to, 2*hz, rtwn_calib_to, sc);
}
