
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otus_softc {int * sc_rx; int sc_rx_inactive; int sc_rx_active; } ;


 int OTUS_RXBUFSZ ;
 int OTUS_RX_LIST_COUNT ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_HEAD (int *,int *,int ) ;
 int next ;
 int otus_alloc_list (struct otus_softc*,int *,int,int ) ;

__attribute__((used)) static int
otus_alloc_rx_list(struct otus_softc *sc)
{
 int error, i;

 error = otus_alloc_list(sc, sc->sc_rx, OTUS_RX_LIST_COUNT,
     OTUS_RXBUFSZ);
 if (error != 0)
  return (error);

 STAILQ_INIT(&sc->sc_rx_active);
 STAILQ_INIT(&sc->sc_rx_inactive);

 for (i = 0; i < OTUS_RX_LIST_COUNT; i++)
  STAILQ_INSERT_HEAD(&sc->sc_rx_inactive, &sc->sc_rx[i], next);

 return (0);
}
