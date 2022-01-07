
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zyd_tx_data {struct zyd_softc* sc; } ;
struct zyd_softc {scalar_t__ tx_nfree; int tx_free; struct zyd_tx_data* tx_data; int tx_q; } ;


 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct zyd_tx_data*,int ) ;
 int ZYD_TX_LIST_CNT ;
 int next ;

__attribute__((used)) static void
zyd_setup_tx_list(struct zyd_softc *sc)
{
 struct zyd_tx_data *data;
 int i;

 sc->tx_nfree = 0;
 STAILQ_INIT(&sc->tx_q);
 STAILQ_INIT(&sc->tx_free);

 for (i = 0; i < ZYD_TX_LIST_CNT; i++) {
  data = &sc->tx_data[i];

  data->sc = sc;
  STAILQ_INSERT_TAIL(&sc->tx_free, data, next);
  sc->tx_nfree++;
 }
}
