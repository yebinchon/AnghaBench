
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct upgt_softc {int sc_flags; int sc_tx_timer; int sc_tx_inactive; int sc_snd; } ;
struct upgt_data {int dummy; } ;
struct TYPE_3__ {int * rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ieee80211_node {TYPE_2__* ni_vap; } ;
struct TYPE_4__ {int iv_ifp; } ;


 int IFCOUNTER_OERRORS ;
 int STAILQ_INSERT_HEAD (int *,struct upgt_data*,int ) ;
 int UPGT_ASSERT_LOCKED (struct upgt_softc*) ;
 int UPGT_FLAG_INITDONE ;
 int UPGT_STAT_INC (struct upgt_softc*,int ) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int if_inc_counter (int ,int ,int) ;
 struct mbuf* mbufq_dequeue (int *) ;
 int mbufq_prepend (int *,struct mbuf*) ;
 int next ;
 int st_tx_inactive ;
 struct upgt_data* upgt_gettxbuf (struct upgt_softc*) ;
 scalar_t__ upgt_tx_start (struct upgt_softc*,struct mbuf*,struct ieee80211_node*,struct upgt_data*) ;

__attribute__((used)) static void
upgt_start(struct upgt_softc *sc)
{
 struct upgt_data *data_tx;
 struct ieee80211_node *ni;
 struct mbuf *m;

 UPGT_ASSERT_LOCKED(sc);

 if ((sc->sc_flags & UPGT_FLAG_INITDONE) == 0)
  return;

 while ((m = mbufq_dequeue(&sc->sc_snd)) != ((void*)0)) {
  data_tx = upgt_gettxbuf(sc);
  if (data_tx == ((void*)0)) {
   mbufq_prepend(&sc->sc_snd, m);
   break;
  }

  ni = (struct ieee80211_node *)m->m_pkthdr.rcvif;
  m->m_pkthdr.rcvif = ((void*)0);

  if (upgt_tx_start(sc, m, ni, data_tx) != 0) {
   if_inc_counter(ni->ni_vap->iv_ifp,
       IFCOUNTER_OERRORS, 1);
   STAILQ_INSERT_HEAD(&sc->sc_tx_inactive, data_tx, next);
   UPGT_STAT_INC(sc, st_tx_inactive);
   ieee80211_free_node(ni);
   continue;
  }
  sc->sc_tx_timer = 5;
 }
}
