
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zyd_tx_data {int * ni; int * m; } ;
struct zyd_softc {struct zyd_tx_data* tx_data; int tx_free; int tx_q; scalar_t__ tx_nfree; } ;


 int STAILQ_INIT (int *) ;
 int ZYD_TX_LIST_CNT ;
 int ieee80211_free_node (int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
zyd_unsetup_tx_list(struct zyd_softc *sc)
{
 struct zyd_tx_data *data;
 int i;


 sc->tx_nfree = 0;
 STAILQ_INIT(&sc->tx_q);
 STAILQ_INIT(&sc->tx_free);


 for (i = 0; i < ZYD_TX_LIST_CNT; i++) {
  data = &sc->tx_data[i];

  if (data->m != ((void*)0)) {
   m_freem(data->m);
   data->m = ((void*)0);
  }
  if (data->ni != ((void*)0)) {
   ieee80211_free_node(data->ni);
   data->ni = ((void*)0);
  }
 }
}
