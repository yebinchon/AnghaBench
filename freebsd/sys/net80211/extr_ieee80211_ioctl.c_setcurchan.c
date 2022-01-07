
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {scalar_t__ iv_opmode; scalar_t__ iv_state; struct ieee80211_channel* iv_des_chan; TYPE_1__* iv_bss; int iv_ifp; int iv_des_mode; struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct ieee80211_channel* ic_curchan; void* ic_rt; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_2__ {struct ieee80211_channel* ni_chan; } ;


 int EBUSY ;
 int EINVAL ;
 struct ieee80211_channel* IEEE80211_CHAN_ANYC ;
 scalar_t__ IEEE80211_IS_CHAN_NOADHOC (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_IS_CHAN_NOHOSTAP (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_IS_CHAN_RADAR (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_M_HOSTAP ;
 scalar_t__ IEEE80211_M_IBSS ;
 scalar_t__ IEEE80211_M_MONITOR ;
 scalar_t__ IEEE80211_S_RUN ;
 int IEEE80211_S_SCAN ;
 scalar_t__ IEEE80211_S_SLEEP ;
 scalar_t__ IFNET_IS_UP_RUNNING (int ) ;
 scalar_t__ IS_UP_AUTO (struct ieee80211vap*) ;
 int check_mode_consistency (struct ieee80211_channel*,int ) ;
 void* ieee80211_get_ratetable (struct ieee80211_channel*) ;
 int ieee80211_new_state (struct ieee80211vap*,int ,int ) ;
 int ieee80211_setcurchan (struct ieee80211com*,struct ieee80211_channel*) ;

__attribute__((used)) static int
setcurchan(struct ieee80211vap *vap, struct ieee80211_channel *c)
{
 struct ieee80211com *ic = vap->iv_ic;
 int error;

 if (c != IEEE80211_CHAN_ANYC) {
  if (IEEE80211_IS_CHAN_RADAR(c))
   return EBUSY;
  if (vap->iv_opmode == IEEE80211_M_HOSTAP) {
   if (IEEE80211_IS_CHAN_NOHOSTAP(c))
    return EINVAL;
   if (!check_mode_consistency(c, vap->iv_des_mode))
    return EINVAL;
  } else if (vap->iv_opmode == IEEE80211_M_IBSS) {
   if (IEEE80211_IS_CHAN_NOADHOC(c))
    return EINVAL;
  }
  if ((vap->iv_state == IEEE80211_S_RUN || vap->iv_state == IEEE80211_S_SLEEP) &&
      vap->iv_bss->ni_chan == c)
   return 0;
 }
 vap->iv_des_chan = c;

 error = 0;
 if (vap->iv_opmode == IEEE80211_M_MONITOR &&
     vap->iv_des_chan != IEEE80211_CHAN_ANYC) {



  if (IFNET_IS_UP_RUNNING(vap->iv_ifp)) {

   ieee80211_setcurchan(ic, vap->iv_des_chan);
   vap->iv_bss->ni_chan = ic->ic_curchan;
  } else {
   ic->ic_curchan = vap->iv_des_chan;
   ic->ic_rt = ieee80211_get_ratetable(ic->ic_curchan);
  }
 } else {





  if (IS_UP_AUTO(vap))
   ieee80211_new_state(vap, IEEE80211_S_SCAN, 0);
  else if (vap->iv_des_chan != IEEE80211_CHAN_ANYC) {





   ic->ic_curchan = vap->iv_des_chan;
   ic->ic_rt = ieee80211_get_ratetable(ic->ic_curchan);
  }
 }
 return error;
}
