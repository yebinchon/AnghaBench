
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct malo_txq {int nfree; int free; } ;
struct malo_txbuf {int * bf_node; int * bf_m; } ;
struct malo_softc {int malo_mh; struct malo_txq* malo_txq; scalar_t__ malo_invalid; int malo_running; } ;
struct ieee80211com {struct malo_softc* ic_softc; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;
struct ieee80211_bpf_params {int dummy; } ;


 int EIO ;
 int ENETDOWN ;
 int ENOBUFS ;
 int MALO_TXQ_LOCK (struct malo_txq*) ;
 int MALO_TXQ_UNLOCK (struct malo_txq*) ;
 int STAILQ_INSERT_HEAD (int *,struct malo_txbuf*,int ) ;
 int bf_list ;
 int m_freem (struct mbuf*) ;
 struct malo_txbuf* malo_getbuf (struct malo_softc*,struct malo_txq*) ;
 int malo_hal_txstart (int ,int ) ;
 scalar_t__ malo_tx_start (struct malo_softc*,struct ieee80211_node*,struct malo_txbuf*,struct mbuf*) ;

__attribute__((used)) static int
malo_raw_xmit(struct ieee80211_node *ni, struct mbuf *m,
 const struct ieee80211_bpf_params *params)
{
 struct ieee80211com *ic = ni->ni_ic;
 struct malo_softc *sc = ic->ic_softc;
 struct malo_txbuf *bf;
 struct malo_txq *txq;

 if (!sc->malo_running || sc->malo_invalid) {
  m_freem(m);
  return ENETDOWN;
 }







 txq = &sc->malo_txq[0];
 bf = malo_getbuf(sc, txq);
 if (bf == ((void*)0)) {
  m_freem(m);
  return ENOBUFS;
 }




 if (malo_tx_start(sc, ni, bf, m) != 0) {
  bf->bf_m = ((void*)0);
  bf->bf_node = ((void*)0);
  MALO_TXQ_LOCK(txq);
  STAILQ_INSERT_HEAD(&txq->free, bf, bf_list);
  txq->nfree++;
  MALO_TXQ_UNLOCK(txq);

  return EIO;
 }
 malo_hal_txstart(sc->malo_mh, 0 );

 return 0;
}
