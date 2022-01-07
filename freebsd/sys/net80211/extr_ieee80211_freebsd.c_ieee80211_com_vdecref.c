
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211vap {int iv_com_state; } ;


 int IEEE80211_COM_REF ;
 int IEEE80211_COM_REF_ADD ;
 int KASSERT (int,char*) ;
 scalar_t__ MS (int ,int ) ;
 int atomic_fetchadd_32 (int *,int ) ;

void
ieee80211_com_vdecref(struct ieee80211vap *vap)
{
 uint32_t ostate;

 ostate = atomic_fetchadd_32(&vap->iv_com_state, -IEEE80211_COM_REF_ADD);

 KASSERT(MS(ostate, IEEE80211_COM_REF) != 0,
     ("com reference counter underflow"));

 (void) ostate;
}
