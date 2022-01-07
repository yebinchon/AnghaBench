
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sample_node {int static_rix; } ;
struct ieee80211_txparam {scalar_t__ ucastrate; } ;
struct ieee80211_node {struct ieee80211_txparam* ni_txparms; } ;
struct ath_softc {int dummy; } ;
struct ath_node {int dummy; } ;


 struct ath_node* ATH_NODE (struct ieee80211_node*) ;
 struct sample_node* ATH_NODE_SAMPLE (struct ath_node*) ;
 scalar_t__ IEEE80211_FIXED_RATE_NONE ;
 int ath_rate_get_static_rix (struct ath_softc*,struct ieee80211_node*) ;

__attribute__((used)) static void
ath_rate_update_static_rix(struct ath_softc *sc, struct ieee80211_node *ni)
{
 struct ath_node *an = ATH_NODE(ni);
 const struct ieee80211_txparam *tp = ni->ni_txparms;
 struct sample_node *sn = ATH_NODE_SAMPLE(an);

 if (tp != ((void*)0) && tp->ucastrate != IEEE80211_FIXED_RATE_NONE) {







  sn->static_rix = ath_rate_get_static_rix(sc, ni);
 } else {
  sn->static_rix = -1;
 }
}
