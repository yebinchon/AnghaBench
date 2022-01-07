
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211com {int ic_sta; } ;
struct ieee80211_node {int dummy; } ;
struct ath_softc {struct ieee80211com sc_ic; } ;
struct TYPE_2__ {int macaddr; } ;
struct ath_rateioctl {TYPE_1__ is_u; } ;
struct ath_node {int dummy; } ;


 struct ath_node* ATH_NODE (struct ieee80211_node*) ;
 int ATH_NODE_LOCK (struct ath_node*) ;
 int ATH_NODE_UNLOCK (struct ath_node*) ;
 int EINVAL ;
 int ath_rate_fetch_node_stats (struct ath_softc*,struct ath_node*,struct ath_rateioctl*) ;
 struct ieee80211_node* ieee80211_find_node (int *,int ) ;
 int ieee80211_node_decref (struct ieee80211_node*) ;

__attribute__((used)) static int
ath_ioctl_ratestats(struct ath_softc *sc, struct ath_rateioctl *rs)
{
 struct ath_node *an;
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211_node *ni;
 int error = 0;


 ni = ieee80211_find_node(&ic->ic_sta, rs->is_u.macaddr);
 if (ni == ((void*)0)) {
  error = EINVAL;
  goto bad;
 }


 an = ATH_NODE(ni);
 ATH_NODE_LOCK(an);


 error = ath_rate_fetch_node_stats(sc, an, rs);




 ATH_NODE_UNLOCK(an);


 ieee80211_node_decref(ni);

bad:
 return (error);
}
