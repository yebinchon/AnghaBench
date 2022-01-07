
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int cur_bcnq_id; } ;


 int rtwn_beacon_select (struct rtwn_softc*,int) ;
 int rtwn_check_beacon_valid (struct rtwn_softc*,int) ;
 int rtwn_reset_beacon_valid (struct rtwn_softc*,int) ;

void
rtwn_switch_bcnq(struct rtwn_softc *sc, int id)
{

 if (sc->cur_bcnq_id != id) {

  (void) rtwn_check_beacon_valid(sc, sc->cur_bcnq_id);


  rtwn_beacon_select(sc, id);
  sc->cur_bcnq_id = id;
 }


 rtwn_reset_beacon_valid(sc, id);
}
