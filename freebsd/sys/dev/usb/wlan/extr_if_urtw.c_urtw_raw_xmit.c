
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urtw_softc {int sc_flags; int sc_txtimer; int sc_tx_inactive; } ;
struct urtw_data {int dummy; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct urtw_softc* ic_softc; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;
struct ieee80211_bpf_params {int dummy; } ;


 int EIO ;
 int ENETDOWN ;
 int ENOBUFS ;
 int STAILQ_INSERT_HEAD (int *,struct urtw_data*,int ) ;
 int URTW_LOCK (struct urtw_softc*) ;
 int URTW_PRIORITY_LOW ;
 int URTW_RUNNING ;
 int URTW_UNLOCK (struct urtw_softc*) ;
 int m_freem (struct mbuf*) ;
 int next ;
 struct urtw_data* urtw_getbuf (struct urtw_softc*) ;
 scalar_t__ urtw_tx_start (struct urtw_softc*,struct ieee80211_node*,struct mbuf*,struct urtw_data*,int ) ;

__attribute__((used)) static int
urtw_raw_xmit(struct ieee80211_node *ni, struct mbuf *m,
    const struct ieee80211_bpf_params *params)
{
 struct ieee80211com *ic = ni->ni_ic;
 struct urtw_softc *sc = ic->ic_softc;
 struct urtw_data *bf;


 if (!(sc->sc_flags & URTW_RUNNING)) {
  m_freem(m);
  return ENETDOWN;
 }
 URTW_LOCK(sc);
 bf = urtw_getbuf(sc);
 if (bf == ((void*)0)) {
  m_freem(m);
  URTW_UNLOCK(sc);
  return (ENOBUFS);
 }

 if (urtw_tx_start(sc, ni, m, bf, URTW_PRIORITY_LOW) != 0) {
  STAILQ_INSERT_HEAD(&sc->sc_tx_inactive, bf, next);
  URTW_UNLOCK(sc);
  return (EIO);
 }
 URTW_UNLOCK(sc);

 sc->sc_txtimer = 5;
 return (0);
}
