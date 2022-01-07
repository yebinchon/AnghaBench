
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {scalar_t__ ic_opmode; int ic_caps; int ic_flags; int ic_curchan; scalar_t__ ic_longslotsta; scalar_t__ ic_nonerpsta; } ;


 int IEEE80211_C_SHPREAMBLE ;
 int IEEE80211_C_SHSLOT ;
 int IEEE80211_F_SHPREAMBLE ;
 int IEEE80211_F_USEBARKER ;
 int IEEE80211_F_USEPROT ;
 scalar_t__ IEEE80211_IS_CHAN_A (int ) ;
 scalar_t__ IEEE80211_IS_CHAN_ANYG (int ) ;
 scalar_t__ IEEE80211_IS_CHAN_HT (int ) ;
 scalar_t__ IEEE80211_M_HOSTAP ;
 int ieee80211_set_shortslottime (struct ieee80211com*,int) ;

void
ieee80211_reset_erp(struct ieee80211com *ic)
{
 ic->ic_flags &= ~IEEE80211_F_USEPROT;
 ic->ic_nonerpsta = 0;
 ic->ic_longslotsta = 0;





 ieee80211_set_shortslottime(ic,
  IEEE80211_IS_CHAN_A(ic->ic_curchan) ||
  IEEE80211_IS_CHAN_HT(ic->ic_curchan) ||
  (IEEE80211_IS_CHAN_ANYG(ic->ic_curchan) &&
  ic->ic_opmode == IEEE80211_M_HOSTAP &&
  (ic->ic_caps & IEEE80211_C_SHSLOT)));



 if (IEEE80211_IS_CHAN_A(ic->ic_curchan) ||
     (ic->ic_caps & IEEE80211_C_SHPREAMBLE)) {
  ic->ic_flags |= IEEE80211_F_SHPREAMBLE;
  ic->ic_flags &= ~IEEE80211_F_USEBARKER;
 } else {
  ic->ic_flags &= ~IEEE80211_F_SHPREAMBLE;
  ic->ic_flags |= IEEE80211_F_USEBARKER;
 }
}
