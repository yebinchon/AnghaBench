
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {scalar_t__ iv_opmode; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_curchan; } ;


 scalar_t__ IEEE80211_IS_CHAN_NOADHOC (int ) ;
 scalar_t__ IEEE80211_IS_CHAN_NOHOSTAP (int ) ;
 scalar_t__ IEEE80211_M_HOSTAP ;
 scalar_t__ IEEE80211_M_IBSS ;

__attribute__((used)) static int
ieee80211_start_check_reset_chan(struct ieee80211vap *vap)
{
 struct ieee80211com *ic = vap->iv_ic;

 if ((vap->iv_opmode == IEEE80211_M_IBSS &&
      IEEE80211_IS_CHAN_NOADHOC(ic->ic_curchan)) ||
     (vap->iv_opmode == IEEE80211_M_HOSTAP &&
      IEEE80211_IS_CHAN_NOHOSTAP(ic->ic_curchan)))
  return (1);
 return (0);
}
