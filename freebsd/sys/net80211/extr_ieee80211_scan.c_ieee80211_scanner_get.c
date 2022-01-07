
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_scanner {int dummy; } ;
typedef enum ieee80211_opmode { ____Placeholder_ieee80211_opmode } ieee80211_opmode ;


 int IEEE80211_OPMODE_MAX ;
 int ieee80211_load_module (int ) ;
 int * scan_modnames ;
 struct ieee80211_scanner const** scanners ;

const struct ieee80211_scanner *
ieee80211_scanner_get(enum ieee80211_opmode mode)
{
 if (mode >= IEEE80211_OPMODE_MAX)
  return ((void*)0);
 if (scanners[mode] == ((void*)0))
  ieee80211_load_module(scan_modnames[mode]);
 return scanners[mode];
}
