
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_scanner {int dummy; } ;


 int IEEE80211_OPMODE_MAX ;
 struct ieee80211_scanner const** scanners ;

void
ieee80211_scanner_unregister_all(const struct ieee80211_scanner *scan)
{
 int m;

 for (m = 0; m < IEEE80211_OPMODE_MAX; m++)
  if (scanners[m] == scan)
   scanners[m] = ((void*)0);
}
