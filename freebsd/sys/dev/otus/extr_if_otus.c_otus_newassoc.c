
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otus_softc {int dummy; } ;
struct otus_node {scalar_t__ tx_retries; scalar_t__ tx_err; scalar_t__ tx_done; } ;
struct ieee80211com {struct otus_softc* ic_softc; } ;
struct ieee80211_node {int ni_macaddr; struct ieee80211com* ni_ic; } ;


 int OTUS_DEBUG_STATE ;
 int OTUS_DPRINTF (struct otus_softc*,int ,char*,int,int ) ;
 struct otus_node* OTUS_NODE (struct ieee80211_node*) ;
 int ether_sprintf (int ) ;

void
otus_newassoc(struct ieee80211_node *ni, int isnew)
{
 struct ieee80211com *ic = ni->ni_ic;
 struct otus_softc *sc = ic->ic_softc;
 struct otus_node *on = OTUS_NODE(ni);

 OTUS_DPRINTF(sc, OTUS_DEBUG_STATE, "new assoc isnew=%d addr=%s\n",
     isnew, ether_sprintf(ni->ni_macaddr));

 on->tx_done = 0;
 on->tx_err = 0;
 on->tx_retries = 0;
}
