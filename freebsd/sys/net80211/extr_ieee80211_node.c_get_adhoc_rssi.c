
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rssiinfo {int rssi_total; int rssi_samples; } ;
struct ieee80211vap {TYPE_1__* iv_ic; } ;
struct ieee80211_node {int ni_capinfo; struct ieee80211vap* ni_vap; } ;
typedef scalar_t__ int8_t ;
struct TYPE_2__ {scalar_t__ (* ic_node_getrssi ) (struct ieee80211_node*) ;} ;


 int IEEE80211_CAPINFO_IBSS ;
 scalar_t__ stub1 (struct ieee80211_node*) ;

__attribute__((used)) static void
get_adhoc_rssi(void *arg, struct ieee80211_node *ni)
{
 struct rssiinfo *info = arg;
 struct ieee80211vap *vap = ni->ni_vap;
 int8_t rssi;



 if ((ni->ni_capinfo & IEEE80211_CAPINFO_IBSS) == 0)
  return;
 rssi = vap->iv_ic->ic_node_getrssi(ni);
 if (rssi != 0) {
  info->rssi_samples++;
  info->rssi_total += rssi;
 }
}
