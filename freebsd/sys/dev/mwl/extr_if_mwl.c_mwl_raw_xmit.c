
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwl_txq {int dummy; } ;
struct mwl_txbuf {int dummy; } ;
struct TYPE_2__ {int mst_tx_qstop; } ;
struct mwl_softc {int sc_mh; TYPE_1__ sc_stats; struct mwl_txq** sc_ac2q; scalar_t__ sc_invalid; int sc_running; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct mwl_softc* ic_softc; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;
struct ieee80211_bpf_params {int dummy; } ;


 int EIO ;
 int ENETDOWN ;
 int ENOBUFS ;
 size_t M_WME_GETAC (struct mbuf*) ;
 int m_freem (struct mbuf*) ;
 struct mwl_txbuf* mwl_gettxbuf (struct mwl_softc*,struct mwl_txq*) ;
 int mwl_hal_txstart (int ,int ) ;
 int mwl_puttxbuf_head (struct mwl_txq*,struct mwl_txbuf*) ;
 scalar_t__ mwl_tx_start (struct mwl_softc*,struct ieee80211_node*,struct mwl_txbuf*,struct mbuf*) ;

__attribute__((used)) static int
mwl_raw_xmit(struct ieee80211_node *ni, struct mbuf *m,
 const struct ieee80211_bpf_params *params)
{
 struct ieee80211com *ic = ni->ni_ic;
 struct mwl_softc *sc = ic->ic_softc;
 struct mwl_txbuf *bf;
 struct mwl_txq *txq;

 if (!sc->sc_running || sc->sc_invalid) {
  m_freem(m);
  return ENETDOWN;
 }
 txq = sc->sc_ac2q[M_WME_GETAC(m)];
 bf = mwl_gettxbuf(sc, txq);
 if (bf == ((void*)0)) {
  sc->sc_stats.mst_tx_qstop++;
  m_freem(m);
  return ENOBUFS;
 }



 if (mwl_tx_start(sc, ni, bf, m)) {
  mwl_puttxbuf_head(txq, bf);

  return EIO;
 }
 mwl_hal_txstart(sc->sc_mh, 0 );
 return 0;
}
