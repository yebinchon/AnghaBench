
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211vap {int iv_com_state; } ;


 int ENETDOWN ;
 int EOVERFLOW ;
 int IEEE80211_COM_DETACHED ;
 int IEEE80211_COM_REF ;
 int IEEE80211_COM_REF_ADD ;
 scalar_t__ IEEE80211_COM_REF_MAX ;
 scalar_t__ MS (int,int ) ;
 int atomic_fetchadd_32 (int *,int ) ;
 int atomic_subtract_32 (int *,int ) ;

int
ieee80211_com_vincref(struct ieee80211vap *vap)
{
 uint32_t ostate;

 ostate = atomic_fetchadd_32(&vap->iv_com_state, IEEE80211_COM_REF_ADD);

 if (ostate & IEEE80211_COM_DETACHED) {
  atomic_subtract_32(&vap->iv_com_state, IEEE80211_COM_REF_ADD);
  return (ENETDOWN);
 }

 if (MS(ostate, IEEE80211_COM_REF) == IEEE80211_COM_REF_MAX) {
  atomic_subtract_32(&vap->iv_com_state, IEEE80211_COM_REF_ADD);
  return (EOVERFLOW);
 }

 return (0);
}
