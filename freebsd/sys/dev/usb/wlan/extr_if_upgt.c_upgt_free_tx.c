
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upgt_softc {struct upgt_data* sc_tx_data; } ;
struct upgt_data {int * ni; int * buf; } ;


 int UPGT_TX_MAXCOUNT ;
 int ieee80211_free_node (int *) ;

__attribute__((used)) static void
upgt_free_tx(struct upgt_softc *sc)
{
 int i;

 for (i = 0; i < UPGT_TX_MAXCOUNT; i++) {
  struct upgt_data *data = &sc->sc_tx_data[i];

  if (data->ni != ((void*)0))
   ieee80211_free_node(data->ni);

  data->buf = ((void*)0);
  data->ni = ((void*)0);
 }
}
