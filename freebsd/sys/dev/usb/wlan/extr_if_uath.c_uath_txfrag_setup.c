
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uath_datahead ;
struct uath_softc {int dummy; } ;
struct uath_data {int dummy; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;
struct ieee80211_node {int dummy; } ;


 int STAILQ_EMPTY (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct uath_data*,int ) ;
 int UATH_ASSERT_LOCKED (struct uath_softc*) ;
 int ieee80211_node_incref (struct ieee80211_node*) ;
 int next ;
 struct uath_data* uath_getbuf (struct uath_softc*) ;
 int uath_txfrag_cleanup (struct uath_softc*,int *,struct ieee80211_node*) ;

__attribute__((used)) static int
uath_txfrag_setup(struct uath_softc *sc, uath_datahead *frags,
    struct mbuf *m0, struct ieee80211_node *ni)
{
 struct mbuf *m;
 struct uath_data *bf;

 UATH_ASSERT_LOCKED(sc);
 for (m = m0->m_nextpkt; m != ((void*)0); m = m->m_nextpkt) {
  bf = uath_getbuf(sc);
  if (bf == ((void*)0)) {
   uath_txfrag_cleanup(sc, frags, ni);
   break;
  }
  ieee80211_node_incref(ni);
  STAILQ_INSERT_TAIL(frags, bf, next);
 }

 return !STAILQ_EMPTY(frags);
}
