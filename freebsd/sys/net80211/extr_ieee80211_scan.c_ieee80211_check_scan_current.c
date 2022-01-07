
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int iv_des_ssid; int iv_des_nssid; } ;


 int IEEE80211_SCAN_ACTIVE ;
 int IEEE80211_SCAN_FOREVER ;
 int ieee80211_check_scan (struct ieee80211vap*,int ,int ,int ,int ,int ,int ) ;

int
ieee80211_check_scan_current(struct ieee80211vap *vap)
{
 return ieee80211_check_scan(vap,
     IEEE80211_SCAN_ACTIVE,
     IEEE80211_SCAN_FOREVER, 0, 0,
     vap->iv_des_nssid, vap->iv_des_ssid);
}
