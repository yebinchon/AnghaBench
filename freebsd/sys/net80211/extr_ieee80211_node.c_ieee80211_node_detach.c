
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_stageq; int ic_sta; int ic_inact; } ;


 int callout_drain (int *) ;
 int ieee80211_ageq_cleanup (int *) ;
 int ieee80211_ageq_drain (int *) ;
 int ieee80211_node_table_cleanup (int *) ;

void
ieee80211_node_detach(struct ieee80211com *ic)
{

 callout_drain(&ic->ic_inact);
 ieee80211_node_table_cleanup(&ic->ic_sta);
 ieee80211_ageq_drain(&ic->ic_stageq);
 ieee80211_ageq_cleanup(&ic->ic_stageq);
}
