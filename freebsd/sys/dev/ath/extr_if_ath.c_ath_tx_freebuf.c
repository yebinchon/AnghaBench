
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ieee80211_node {int dummy; } ;
struct ath_softc {int sc_dmat; } ;
struct ath_buf {struct mbuf* bf_m; struct ieee80211_node* bf_node; int bf_dmamap; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int ath_freebuf (struct ath_softc*,struct ath_buf*) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int ieee80211_tx_complete (struct ieee80211_node*,struct mbuf*,int) ;

void
ath_tx_freebuf(struct ath_softc *sc, struct ath_buf *bf, int status)
{
 struct ieee80211_node *ni = bf->bf_node;
 struct mbuf *m0 = bf->bf_m;






 if (bf->bf_m != ((void*)0)) {
  bus_dmamap_sync(sc->sc_dmat, bf->bf_dmamap,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(sc->sc_dmat, bf->bf_dmamap);
 }

 bf->bf_node = ((void*)0);
 bf->bf_m = ((void*)0);


 ath_freebuf(sc, bf);


 ieee80211_tx_complete(ni, m0, status);
}
