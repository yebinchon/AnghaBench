
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rum_tx_data {struct rum_softc* sc; } ;
struct rum_softc {scalar_t__ tx_nfree; int tx_free; struct rum_tx_data* tx_data; int tx_q; } ;


 int RUM_TX_LIST_COUNT ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct rum_tx_data*,int ) ;
 int next ;

__attribute__((used)) static void
rum_setup_tx_list(struct rum_softc *sc)
{
 struct rum_tx_data *data;
 int i;

 sc->tx_nfree = 0;
 STAILQ_INIT(&sc->tx_q);
 STAILQ_INIT(&sc->tx_free);

 for (i = 0; i < RUM_TX_LIST_COUNT; i++) {
  data = &sc->tx_data[i];

  data->sc = sc;
  STAILQ_INSERT_TAIL(&sc->tx_free, data, next);
  sc->tx_nfree++;
 }
}
