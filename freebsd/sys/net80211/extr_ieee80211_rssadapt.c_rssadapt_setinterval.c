
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct ieee80211_rssadapt* iv_rs; } ;
struct ieee80211_rssadapt {int interval; } ;


 int msecs_to_ticks (int) ;

__attribute__((used)) static void
rssadapt_setinterval(const struct ieee80211vap *vap, int msecs)
{
 struct ieee80211_rssadapt *rs = vap->iv_rs;

 if (!rs)
  return;

 if (msecs < 100)
  msecs = 100;
 rs->interval = msecs_to_ticks(msecs);
}
