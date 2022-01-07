
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otus_softc {int sc_rx; int sc_rx_active; int sc_rx_inactive; } ;


 int OTUS_RX_LIST_COUNT ;
 int STAILQ_INIT (int *) ;
 int otus_free_list (struct otus_softc*,int ,int ) ;

__attribute__((used)) static void
otus_free_rx_list(struct otus_softc *sc)
{

 STAILQ_INIT(&sc->sc_rx_inactive);
 STAILQ_INIT(&sc->sc_rx_active);

 otus_free_list(sc, sc->sc_rx, OTUS_RX_LIST_COUNT);
}
