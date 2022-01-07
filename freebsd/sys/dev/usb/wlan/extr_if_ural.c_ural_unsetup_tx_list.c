
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ural_tx_data {int * ni; int * m; } ;
struct ural_softc {struct ural_tx_data* tx_data; int tx_free; int tx_q; scalar_t__ tx_nfree; } ;


 int RAL_TX_LIST_COUNT ;
 int STAILQ_INIT (int *) ;
 int ieee80211_free_node (int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
ural_unsetup_tx_list(struct ural_softc *sc)
{
 struct ural_tx_data *data;
 int i;


 sc->tx_nfree = 0;
 STAILQ_INIT(&sc->tx_q);
 STAILQ_INIT(&sc->tx_free);


 for (i = 0; i < RAL_TX_LIST_COUNT; i++) {
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
