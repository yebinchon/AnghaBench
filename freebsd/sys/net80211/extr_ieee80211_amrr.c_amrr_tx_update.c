
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {TYPE_1__* iv_ic; } ;
struct ieee80211_ratectl_tx_stats {int flags; int ni; } ;
struct TYPE_2__ {int ic_sta; } ;


 int IEEE80211_RATECTL_TX_STATS_NODE ;
 int amrr_tx_update_cb (struct ieee80211_ratectl_tx_stats*,int ) ;
 int ieee80211_iterate_nodes_vap (int *,struct ieee80211vap*,int (*) (struct ieee80211_ratectl_tx_stats*,int ),struct ieee80211_ratectl_tx_stats*) ;

__attribute__((used)) static void
amrr_tx_update(struct ieee80211vap *vap,
    struct ieee80211_ratectl_tx_stats *stats)
{

 if (stats->flags & IEEE80211_RATECTL_TX_STATS_NODE)
  amrr_tx_update_cb(stats, stats->ni);
 else {
  ieee80211_iterate_nodes_vap(&vap->iv_ic->ic_sta, vap,
      amrr_tx_update_cb, stats);
 }
}
