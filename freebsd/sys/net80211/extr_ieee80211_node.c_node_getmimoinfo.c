
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct ieee80211_node {scalar_t__* ni_mimo_rssi_ctl; int * ni_mimo_noise_ctl; int ni_mimo_chains; } ;
struct ieee80211_mimo_info {TYPE_1__* ch; } ;
typedef int int32_t ;
struct TYPE_2__ {int* rssi; int * noise; } ;


 int IEEE80211_MAX_CHAINS ;
 scalar_t__ IEEE80211_RSSI_DUMMY_MARKER ;
 int IEEE80211_RSSI_GET (scalar_t__) ;
 int MIN (int ,int ) ;
 int bzero (struct ieee80211_mimo_info*,int) ;

__attribute__((used)) static void
node_getmimoinfo(const struct ieee80211_node *ni,
 struct ieee80211_mimo_info *info)
{
 int i;
 uint32_t avgrssi;
 int32_t rssi;

 bzero(info, sizeof(*info));

 for (i = 0; i < MIN(IEEE80211_MAX_CHAINS, ni->ni_mimo_chains); i++) {

  avgrssi = ni->ni_mimo_rssi_ctl[i];
  if (avgrssi == IEEE80211_RSSI_DUMMY_MARKER) {
   info->ch[i].rssi[0] = 0;
  } else {
   rssi = IEEE80211_RSSI_GET(avgrssi);
   info->ch[i].rssi[0] = rssi < 0 ? 0 : rssi > 127 ? 127 : rssi;
  }
  info->ch[i].noise[0] = ni->ni_mimo_noise_ctl[i];
 }




}
