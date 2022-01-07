
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int is_beacon_miss; } ;
struct ieee80211vap {size_t iv_state; size_t iv_opmode; scalar_t__ iv_bmiss_count; scalar_t__ iv_bmiss_max; scalar_t__ iv_roaming; TYPE_3__* iv_bss; TYPE_1__ iv_stats; int iv_swbmiss; int iv_myaddr; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_flags; TYPE_2__* ic_bsschan; } ;
struct TYPE_7__ {int ni_esslen; int ni_essid; int ni_bssid; } ;
struct TYPE_6__ {int ic_flags; } ;


 scalar_t__ IEEE80211_ATH_CAP (struct ieee80211vap*,TYPE_3__*,int ) ;
 int IEEE80211_CHAN_TURBO ;
 int IEEE80211_DPRINTF (struct ieee80211vap*,int,char*,int ,int ) ;
 int IEEE80211_F_SCAN ;
 int IEEE80211_LOCK_ASSERT (struct ieee80211com*) ;
 int IEEE80211_MSG_DEBUG ;
 int IEEE80211_MSG_STATE ;
 int IEEE80211_NODE_TURBOP ;
 scalar_t__ IEEE80211_ROAMING_AUTO ;
 int IEEE80211_S_ASSOC ;
 size_t IEEE80211_S_CSA ;
 size_t IEEE80211_S_RUN ;
 int IEEE80211_S_SCAN ;
 int KASSERT (int,char*) ;
 int callout_stop (int *) ;
 int ieee80211_csa_completeswitch (struct ieee80211com*) ;
 int ieee80211_dturbo_switch (struct ieee80211vap*,int) ;
 int ieee80211_new_state (struct ieee80211vap*,int ,int) ;
 int * ieee80211_opmode_name ;
 int ieee80211_send_probereq (TYPE_3__*,int ,int ,int ,int ,int ) ;
 int * ieee80211_state_name ;

__attribute__((used)) static void
sta_beacon_miss(struct ieee80211vap *vap)
{
 struct ieee80211com *ic = vap->iv_ic;

 IEEE80211_LOCK_ASSERT(ic);

 KASSERT((ic->ic_flags & IEEE80211_F_SCAN) == 0, ("scanning"));
 KASSERT(vap->iv_state >= IEEE80211_S_RUN,
     ("wrong state %s", ieee80211_state_name[vap->iv_state]));

 IEEE80211_DPRINTF(vap, IEEE80211_MSG_STATE | IEEE80211_MSG_DEBUG,
     "beacon miss, mode %s state %s\n",
     ieee80211_opmode_name[vap->iv_opmode],
     ieee80211_state_name[vap->iv_state]);

 if (vap->iv_state == IEEE80211_S_CSA) {







  ieee80211_csa_completeswitch(ic);
  return;
 }
 if (++vap->iv_bmiss_count < vap->iv_bmiss_max) {







  ieee80211_send_probereq(vap->iv_bss, vap->iv_myaddr,
   vap->iv_bss->ni_bssid, vap->iv_bss->ni_bssid,
   vap->iv_bss->ni_essid, vap->iv_bss->ni_esslen);
  return;
 }

 callout_stop(&vap->iv_swbmiss);
 vap->iv_bmiss_count = 0;
 vap->iv_stats.is_beacon_miss++;
 if (vap->iv_roaming == IEEE80211_ROAMING_AUTO) {
  ieee80211_new_state(vap, IEEE80211_S_ASSOC, 1);
 } else {






  ieee80211_new_state(vap, IEEE80211_S_SCAN, 0);
 }
}
