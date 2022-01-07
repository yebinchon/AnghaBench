
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_modecaps; int ic_rxstream; int ic_txstream; } ;


 int IEEE80211_MODE_11NA ;
 int IEEE80211_MODE_11NG ;
 int ht_announce (struct ieee80211com*,int ) ;
 int ic_printf (struct ieee80211com*,char*,int ,int ) ;
 scalar_t__ isset (int ,int ) ;

void
ieee80211_ht_announce(struct ieee80211com *ic)
{

 if (isset(ic->ic_modecaps, IEEE80211_MODE_11NA) ||
     isset(ic->ic_modecaps, IEEE80211_MODE_11NG))
  ic_printf(ic, "%dT%dR\n", ic->ic_txstream, ic->ic_rxstream);
 if (isset(ic->ic_modecaps, IEEE80211_MODE_11NA))
  ht_announce(ic, IEEE80211_MODE_11NA);
 if (isset(ic->ic_modecaps, IEEE80211_MODE_11NG))
  ht_announce(ic, IEEE80211_MODE_11NG);
}
