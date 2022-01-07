
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int iv_com_state; } ;


 int IEEE80211_COM_DETACHED ;
 int IEEE80211_COM_REF ;
 scalar_t__ MS (int ,int ) ;
 int atomic_load_32 (int *) ;
 int atomic_set_32 (int *,int ) ;
 int msecs_to_ticks (int) ;
 int pause (char*,int) ;

void
ieee80211_com_vdetach(struct ieee80211vap *vap)
{
 int sleep_time;

 sleep_time = msecs_to_ticks(250);
 atomic_set_32(&vap->iv_com_state, IEEE80211_COM_DETACHED);
 while (MS(atomic_load_32(&vap->iv_com_state), IEEE80211_COM_REF) != 0)
  pause("comref", sleep_time);
}
