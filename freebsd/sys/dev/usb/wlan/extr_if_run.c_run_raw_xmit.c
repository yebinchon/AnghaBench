
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct run_softc {int sc_flags; } ;
struct mbuf {int dummy; } ;
struct ieee80211_node {TYPE_1__* ni_ic; } ;
struct ieee80211_bpf_params {int dummy; } ;
struct TYPE_2__ {struct run_softc* ic_softc; } ;


 int ENETDOWN ;
 int RUN_DEBUG_XMIT ;
 int RUN_DPRINTF (struct run_softc*,int ,char*) ;
 int RUN_LOCK (struct run_softc*) ;
 int RUN_RUNNING ;
 int RUN_UNLOCK (struct run_softc*) ;
 int m_freem (struct mbuf*) ;
 int run_tx_mgt (struct run_softc*,struct mbuf*,struct ieee80211_node*) ;
 int run_tx_param (struct run_softc*,struct mbuf*,struct ieee80211_node*,struct ieee80211_bpf_params const*) ;

__attribute__((used)) static int
run_raw_xmit(struct ieee80211_node *ni, struct mbuf *m,
    const struct ieee80211_bpf_params *params)
{
 struct run_softc *sc = ni->ni_ic->ic_softc;
 int error = 0;

 RUN_LOCK(sc);


 if (!(sc->sc_flags & RUN_RUNNING)) {
  error = ENETDOWN;
  goto done;
 }

 if (params == ((void*)0)) {

  if ((error = run_tx_mgt(sc, m, ni)) != 0) {
   RUN_DPRINTF(sc, RUN_DEBUG_XMIT, "mgt tx failed\n");
   goto done;
  }
 } else {

  if ((error = run_tx_param(sc, m, ni, params)) != 0) {
   RUN_DPRINTF(sc, RUN_DEBUG_XMIT, "tx with param failed\n");
   goto done;
  }
 }

done:
 RUN_UNLOCK(sc);

 if (error != 0) {
  if(m != ((void*)0))
   m_freem(m);
 }

 return (error);
}
