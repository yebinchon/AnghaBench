
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int * iv_tim_bitmap; } ;


 int IEEE80211_FREE (int *,int ) ;
 int M_80211_POWER ;

void
ieee80211_power_vdetach(struct ieee80211vap *vap)
{
 if (vap->iv_tim_bitmap != ((void*)0)) {
  IEEE80211_FREE(vap->iv_tim_bitmap, M_80211_POWER);
  vap->iv_tim_bitmap = ((void*)0);
 }
}
