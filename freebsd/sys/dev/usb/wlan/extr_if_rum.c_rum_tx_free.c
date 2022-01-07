
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rum_tx_data {int * ni; int * m; struct rum_softc* sc; } ;
struct rum_softc {int tx_nfree; int tx_free; } ;


 int STAILQ_INSERT_TAIL (int *,struct rum_tx_data*,int ) ;
 int ieee80211_tx_complete (int *,int *,int) ;
 int next ;

__attribute__((used)) static void
rum_tx_free(struct rum_tx_data *data, int txerr)
{
 struct rum_softc *sc = data->sc;

 if (data->m != ((void*)0)) {
  ieee80211_tx_complete(data->ni, data->m, txerr);
  data->m = ((void*)0);
  data->ni = ((void*)0);
 }
 STAILQ_INSERT_TAIL(&sc->tx_free, data, next);
 sc->tx_nfree++;
}
