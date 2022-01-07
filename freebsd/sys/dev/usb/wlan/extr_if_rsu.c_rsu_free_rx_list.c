
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsu_softc {int sc_rx; int sc_rx_active; int sc_rx_inactive; } ;


 int RSU_RX_LIST_COUNT ;
 int STAILQ_INIT (int *) ;
 int rsu_free_list (struct rsu_softc*,int ,int ) ;

__attribute__((used)) static void
rsu_free_rx_list(struct rsu_softc *sc)
{

 STAILQ_INIT(&sc->sc_rx_inactive);
 STAILQ_INIT(&sc->sc_rx_active);

 rsu_free_list(sc, sc->sc_rx, RSU_RX_LIST_COUNT);
}
