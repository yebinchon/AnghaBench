
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct run_softc {int sc_flags; int sc_snd; } ;
struct TYPE_2__ {scalar_t__ rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ieee80211_node {int dummy; } ;


 int MA_OWNED ;
 int RUN_LOCK_ASSERT (struct run_softc*,int ) ;
 int RUN_RUNNING ;
 struct mbuf* mbufq_dequeue (int *) ;
 int mbufq_prepend (int *,struct mbuf*) ;
 scalar_t__ run_tx (struct run_softc*,struct mbuf*,struct ieee80211_node*) ;

__attribute__((used)) static void
run_start(struct run_softc *sc)
{
 struct ieee80211_node *ni;
 struct mbuf *m;

 RUN_LOCK_ASSERT(sc, MA_OWNED);

 if ((sc->sc_flags & RUN_RUNNING) == 0)
  return;

 while ((m = mbufq_dequeue(&sc->sc_snd)) != ((void*)0)) {
  ni = (struct ieee80211_node *)m->m_pkthdr.rcvif;
  if (run_tx(sc, m, ni) != 0) {
   mbufq_prepend(&sc->sc_snd, m);
   break;
  }
 }
}
