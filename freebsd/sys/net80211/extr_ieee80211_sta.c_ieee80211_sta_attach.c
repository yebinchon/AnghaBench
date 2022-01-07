
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int * ic_vattach; } ;


 size_t IEEE80211_M_STA ;
 int sta_vattach ;

void
ieee80211_sta_attach(struct ieee80211com *ic)
{
 ic->ic_vattach[IEEE80211_M_STA] = sta_vattach;
}
