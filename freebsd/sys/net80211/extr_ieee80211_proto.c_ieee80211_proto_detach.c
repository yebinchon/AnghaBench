
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;


 int ieee80211_adhoc_detach (struct ieee80211com*) ;
 int ieee80211_hostap_detach (struct ieee80211com*) ;
 int ieee80211_mesh_detach (struct ieee80211com*) ;
 int ieee80211_monitor_detach (struct ieee80211com*) ;
 int ieee80211_sta_detach (struct ieee80211com*) ;
 int ieee80211_wds_detach (struct ieee80211com*) ;

void
ieee80211_proto_detach(struct ieee80211com *ic)
{
 ieee80211_monitor_detach(ic);



 ieee80211_hostap_detach(ic);
 ieee80211_wds_detach(ic);
 ieee80211_adhoc_detach(ic);
 ieee80211_sta_detach(ic);
}
