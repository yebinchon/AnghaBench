
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct ieee80211_amrr* iv_rs; } ;
struct ieee80211_amrr {int amrr_interval; } ;


 int msecs_to_ticks (int) ;

__attribute__((used)) static void
amrr_setinterval(const struct ieee80211vap *vap, int msecs)
{
 struct ieee80211_amrr *amrr = vap->iv_rs;

 if (!amrr)
  return;

 if (msecs < 100)
  msecs = 100;
 amrr->amrr_interval = msecs_to_ticks(msecs);
}
