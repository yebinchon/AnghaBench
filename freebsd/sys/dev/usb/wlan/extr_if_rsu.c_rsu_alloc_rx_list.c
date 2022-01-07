
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsu_softc {int * sc_rx; int sc_rx_inactive; int sc_rx_active; } ;


 int RSU_RXBUFSZ ;
 int RSU_RX_LIST_COUNT ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_HEAD (int *,int *,int ) ;
 int next ;
 int rsu_alloc_list (struct rsu_softc*,int *,int,int ) ;

__attribute__((used)) static int
rsu_alloc_rx_list(struct rsu_softc *sc)
{
        int error, i;

 error = rsu_alloc_list(sc, sc->sc_rx, RSU_RX_LIST_COUNT,
     RSU_RXBUFSZ);
 if (error != 0)
  return (error);

 STAILQ_INIT(&sc->sc_rx_active);
 STAILQ_INIT(&sc->sc_rx_inactive);

 for (i = 0; i < RSU_RX_LIST_COUNT; i++)
  STAILQ_INSERT_HEAD(&sc->sc_rx_inactive, &sc->sc_rx[i], next);

 return (0);
}
