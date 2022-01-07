
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urtw_softc {int * sc_rx; int sc_rx_inactive; int sc_rx_active; } ;


 int MCLBYTES ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_HEAD (int *,int *,int ) ;
 int URTW_RX_DATA_LIST_COUNT ;
 int next ;
 int urtw_alloc_data_list (struct urtw_softc*,int *,int,int ,int *) ;

__attribute__((used)) static int
urtw_alloc_rx_data_list(struct urtw_softc *sc)
{
 int error, i;

 error = urtw_alloc_data_list(sc,
     sc->sc_rx, URTW_RX_DATA_LIST_COUNT,
     MCLBYTES, ((void*)0) );
 if (error != 0)
  return (error);

 STAILQ_INIT(&sc->sc_rx_active);
 STAILQ_INIT(&sc->sc_rx_inactive);

 for (i = 0; i < URTW_RX_DATA_LIST_COUNT; i++)
  STAILQ_INSERT_HEAD(&sc->sc_rx_inactive, &sc->sc_rx[i], next);

 return (0);
}
