
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211vap {int* iv_wpa_ie; int* iv_rsn_ie; } ;


 int IEEE80211_ELEMID_RSN ;
 int IEEE80211_ELEMID_VENDOR ;

__attribute__((used)) static void
setwparsnie(struct ieee80211vap *vap, uint8_t *ie, int space)
{

 if (space == 0 || 2+ie[1] > space)
  return;
 if (ie[0] == IEEE80211_ELEMID_VENDOR)
  vap->iv_wpa_ie = ie;
 else if (ie[0] == IEEE80211_ELEMID_RSN)
  vap->iv_rsn_ie = ie;
}
