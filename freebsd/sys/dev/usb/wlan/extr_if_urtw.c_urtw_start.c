
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urtw_softc {int sc_flags; int sc_txtimer; int sc_watchdog_ch; int sc_tx_inactive; int sc_snd; } ;
struct urtw_data {int dummy; } ;
struct TYPE_3__ {int * rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ieee80211_node {TYPE_2__* ni_vap; } ;
struct TYPE_4__ {int iv_ifp; } ;


 int IFCOUNTER_OERRORS ;
 int STAILQ_INSERT_HEAD (int *,struct urtw_data*,int ) ;
 int URTW_ASSERT_LOCKED (struct urtw_softc*) ;
 int URTW_PRIORITY_NORMAL ;
 int URTW_RUNNING ;
 int callout_reset (int *,int ,int ,struct urtw_softc*) ;
 int hz ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int if_inc_counter (int ,int ,int) ;
 struct mbuf* mbufq_dequeue (int *) ;
 int mbufq_prepend (int *,struct mbuf*) ;
 int next ;
 struct urtw_data* urtw_getbuf (struct urtw_softc*) ;
 scalar_t__ urtw_tx_start (struct urtw_softc*,struct ieee80211_node*,struct mbuf*,struct urtw_data*,int ) ;
 int urtw_watchdog ;

__attribute__((used)) static void
urtw_start(struct urtw_softc *sc)
{
 struct urtw_data *bf;
 struct ieee80211_node *ni;
 struct mbuf *m;

 URTW_ASSERT_LOCKED(sc);

 if ((sc->sc_flags & URTW_RUNNING) == 0)
  return;

 while ((m = mbufq_dequeue(&sc->sc_snd)) != ((void*)0)) {
  bf = urtw_getbuf(sc);
  if (bf == ((void*)0)) {
   mbufq_prepend(&sc->sc_snd, m);
   break;
  }

  ni = (struct ieee80211_node *)m->m_pkthdr.rcvif;
  m->m_pkthdr.rcvif = ((void*)0);

  if (urtw_tx_start(sc, ni, m, bf, URTW_PRIORITY_NORMAL) != 0) {
   if_inc_counter(ni->ni_vap->iv_ifp,
       IFCOUNTER_OERRORS, 1);
   STAILQ_INSERT_HEAD(&sc->sc_tx_inactive, bf, next);
   ieee80211_free_node(ni);
   break;
  }

  sc->sc_txtimer = 5;
  callout_reset(&sc->sc_watchdog_ch, hz, urtw_watchdog, sc);
 }
}
