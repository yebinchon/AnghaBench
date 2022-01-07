
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {void** ic_vattach; } ;


 size_t IEEE80211_M_AHDEMO ;
 size_t IEEE80211_M_IBSS ;
 void* adhoc_vattach ;

void
ieee80211_adhoc_attach(struct ieee80211com *ic)
{
 ic->ic_vattach[IEEE80211_M_IBSS] = adhoc_vattach;
 ic->ic_vattach[IEEE80211_M_AHDEMO] = adhoc_vattach;
}
