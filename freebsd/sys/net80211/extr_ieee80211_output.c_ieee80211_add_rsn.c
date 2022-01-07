
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211vap {int iv_flags; int * iv_rsn_ie; } ;


 int IEEE80211_F_WPA2 ;
 int * add_ie (int *,int *) ;

uint8_t *
ieee80211_add_rsn(uint8_t *frm, const struct ieee80211vap *vap)
{
 if (vap->iv_flags & IEEE80211_F_WPA2 && vap->iv_rsn_ie != ((void*)0))
  return (add_ie(frm, vap->iv_rsn_ie));
 else {

  return (frm);
 }
}
