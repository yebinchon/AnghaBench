
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int RTWN_ASSERT_LOCKED (struct rtwn_softc*) ;
 int rtwn_rxfilter_update_mgt (struct rtwn_softc*) ;
 int rtwn_set_promisc (struct rtwn_softc*) ;

void
rtwn_rxfilter_update(struct rtwn_softc *sc)
{

 RTWN_ASSERT_LOCKED(sc);


 rtwn_rxfilter_update_mgt(sc);


 rtwn_set_promisc(sc);
}
