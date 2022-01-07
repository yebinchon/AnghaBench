
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ural_tx_data {int desc; int rate; struct ieee80211_node* ni; struct mbuf* m; } ;
struct ural_softc {scalar_t__ tx_nfree; int * sc_xfer; int tx_q; int tx_free; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ieee80211vap {struct ieee80211_txparam* iv_txparms; } ;
struct ieee80211com {scalar_t__ ic_bsschan; } ;
struct ieee80211_txparam {int mgmtrate; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; struct ieee80211vap* ni_vap; } ;


 int DPRINTFN (int,char*,int ,int ) ;
 int EIO ;
 int ENXIO ;
 scalar_t__ IEEE80211_CHAN_ANYC ;
 int RAL_TX_IFS_NEWBACKOFF ;
 int RAL_TX_TIMESTAMP ;
 struct ural_tx_data* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct ural_tx_data*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 size_t URAL_BULK_WR ;
 size_t ieee80211_chan2mode (scalar_t__) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int m_freem (struct mbuf*) ;
 int next ;
 int ural_setup_tx_desc (struct ural_softc*,int *,int,int ,int ) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static int
ural_tx_bcn(struct ural_softc *sc, struct mbuf *m0, struct ieee80211_node *ni)
{
 struct ieee80211vap *vap = ni->ni_vap;
 struct ieee80211com *ic = ni->ni_ic;
 const struct ieee80211_txparam *tp;
 struct ural_tx_data *data;

 if (sc->tx_nfree == 0) {
  m_freem(m0);
  ieee80211_free_node(ni);
  return (EIO);
 }
 if (ic->ic_bsschan == IEEE80211_CHAN_ANYC) {
  m_freem(m0);
  ieee80211_free_node(ni);
  return (ENXIO);
 }
 data = STAILQ_FIRST(&sc->tx_free);
 STAILQ_REMOVE_HEAD(&sc->tx_free, next);
 sc->tx_nfree--;
 tp = &vap->iv_txparms[ieee80211_chan2mode(ic->ic_bsschan)];

 data->m = m0;
 data->ni = ni;
 data->rate = tp->mgmtrate;

 ural_setup_tx_desc(sc, &data->desc,
     RAL_TX_IFS_NEWBACKOFF | RAL_TX_TIMESTAMP, m0->m_pkthdr.len,
     tp->mgmtrate);

 DPRINTFN(10, "sending beacon frame len=%u rate=%u\n",
     m0->m_pkthdr.len, tp->mgmtrate);

 STAILQ_INSERT_TAIL(&sc->tx_q, data, next);
 usbd_transfer_start(sc->sc_xfer[URAL_BULK_WR]);

 return (0);
}
