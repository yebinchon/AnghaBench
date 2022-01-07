
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otus_softc {int sc_running; } ;
struct otus_data {int dummy; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct otus_softc* ic_softc; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;
struct ieee80211_bpf_params {int dummy; } ;


 int EIO ;
 int ENETDOWN ;
 int ENOBUFS ;
 int ENXIO ;
 int OTUS_LOCK (struct otus_softc*) ;
 int OTUS_UNLOCK (struct otus_softc*) ;
 int m_freem (struct mbuf*) ;
 int otus_freebuf (struct otus_softc*,struct otus_data*) ;
 struct otus_data* otus_getbuf (struct otus_softc*) ;
 scalar_t__ otus_tx (struct otus_softc*,struct ieee80211_node*,struct mbuf*,struct otus_data*,struct ieee80211_bpf_params const*) ;

__attribute__((used)) static int
otus_raw_xmit(struct ieee80211_node *ni, struct mbuf *m,
    const struct ieee80211_bpf_params *params)
{
 struct ieee80211com *ic= ni->ni_ic;
 struct otus_softc *sc = ic->ic_softc;
 struct otus_data *bf = ((void*)0);
 int error = 0;


 OTUS_LOCK(sc);
 if (! sc->sc_running) {
  error = ENETDOWN;
  goto error;
 }

 bf = otus_getbuf(sc);
 if (bf == ((void*)0)) {
  error = ENOBUFS;
  goto error;
 }

 if (otus_tx(sc, ni, m, bf, params) != 0) {
  error = EIO;
  goto error;
 }

 OTUS_UNLOCK(sc);
 return (0);
error:
 if (bf)
  otus_freebuf(sc, bf);
 OTUS_UNLOCK(sc);
 m_freem(m);
 return (ENXIO);
}
