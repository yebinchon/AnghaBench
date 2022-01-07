
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {int iv_des_nssid; TYPE_1__* iv_des_ssid; } ;
struct ieee80211_scanparams {scalar_t__* ssid; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; } ;
struct TYPE_2__ {scalar_t__ len; int ssid; } ;


 scalar_t__ memcmp (int ,scalar_t__*,scalar_t__) ;

int
ieee80211_ibss_node_check_new(struct ieee80211_node *ni,
    const struct ieee80211_scanparams *scan)
{
 struct ieee80211vap *vap = ni->ni_vap;
 int i;




 if (vap->iv_des_nssid == 0 && scan->ssid == ((void*)0))
  goto ok;




 if (!! (vap->iv_des_nssid == 0) != !! (scan->ssid == ((void*)0)))
  goto mismatch;




 if (scan->ssid == ((void*)0))
  goto mismatch;




 for (i = 0; i < vap->iv_des_nssid; i++) {


  if (vap->iv_des_ssid[i].len != scan->ssid[1])
   continue;


  if (memcmp(vap->iv_des_ssid[i].ssid, scan->ssid + 2,
      vap->iv_des_ssid[i].len) == 0)
   goto ok;
 }

mismatch:
 return (0);
ok:
 return (1);
}
