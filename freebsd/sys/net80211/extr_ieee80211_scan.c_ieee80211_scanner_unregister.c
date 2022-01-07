
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_scanner {int dummy; } ;
typedef enum ieee80211_opmode { ____Placeholder_ieee80211_opmode } ieee80211_opmode ;


 int IEEE80211_OPMODE_MAX ;
 struct ieee80211_scanner const** scanners ;

void
ieee80211_scanner_unregister(enum ieee80211_opmode mode,
 const struct ieee80211_scanner *scan)
{
 if (mode >= IEEE80211_OPMODE_MAX)
  return;
 if (scanners[mode] == scan)
  scanners[mode] = ((void*)0);
}
