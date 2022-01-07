
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct malo_txq {int free; } ;
struct malo_txbuf {int * bf_node; int * bf_m; } ;
struct TYPE_5__ {int mst_tx_qstop; } ;
struct malo_softc {int malo_mh; TYPE_2__ malo_stats; int malo_snd; scalar_t__ malo_invalid; int malo_running; struct malo_txq* malo_txq; } ;
struct ieee80211_node {TYPE_3__* ni_vap; } ;
struct TYPE_6__ {int iv_ifp; } ;


 int IFCOUNTER_OERRORS ;
 int MALO_LOCK_ASSERT (struct malo_softc*) ;
 int MALO_TXQ_LOCK (struct malo_txq*) ;
 int MALO_TXQ_UNLOCK (struct malo_txq*) ;
 int STAILQ_INSERT_HEAD (int *,struct malo_txbuf*,int ) ;
 int bf_list ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int if_inc_counter (int ,int ,int) ;
 struct malo_txbuf* malo_getbuf (struct malo_softc*,struct malo_txq*) ;
 int malo_hal_txstart (int ,int ) ;
 scalar_t__ malo_tx_start (struct malo_softc*,struct ieee80211_node*,struct malo_txbuf*,struct mbuf*) ;
 int malo_txcoalesce ;
 struct mbuf* mbufq_dequeue (int *) ;
 int mbufq_prepend (int *,struct mbuf*) ;

__attribute__((used)) static void
malo_start(struct malo_softc *sc)
{
 struct ieee80211_node *ni;
 struct malo_txq *txq = &sc->malo_txq[0];
 struct malo_txbuf *bf = ((void*)0);
 struct mbuf *m;
 int nqueued = 0;

 MALO_LOCK_ASSERT(sc);

 if (!sc->malo_running || sc->malo_invalid)
  return;

 while ((m = mbufq_dequeue(&sc->malo_snd)) != ((void*)0)) {
  ni = (struct ieee80211_node *) m->m_pkthdr.rcvif;
  bf = malo_getbuf(sc, txq);
  if (bf == ((void*)0)) {
   mbufq_prepend(&sc->malo_snd, m);
   sc->malo_stats.mst_tx_qstop++;
   break;
  }



  if (malo_tx_start(sc, ni, bf, m)) {
   if_inc_counter(ni->ni_vap->iv_ifp,
       IFCOUNTER_OERRORS, 1);
   if (bf != ((void*)0)) {
    bf->bf_m = ((void*)0);
    bf->bf_node = ((void*)0);
    MALO_TXQ_LOCK(txq);
    STAILQ_INSERT_HEAD(&txq->free, bf, bf_list);
    MALO_TXQ_UNLOCK(txq);
   }
   ieee80211_free_node(ni);
   continue;
  }
  nqueued++;

  if (nqueued >= malo_txcoalesce) {




   nqueued = 0;
   malo_hal_txstart(sc->malo_mh, 0 );
  }
 }

 if (nqueued) {
  malo_hal_txstart(sc->malo_mh, 0 );
 }
}
