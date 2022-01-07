
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211vap {scalar_t__ iv_state; TYPE_1__* iv_ic; } ;
struct TYPE_3__ {int ic_flags; } ;


 int IEEE80211_F_SCAN ;
 int IEEE80211_LOCK (TYPE_1__*) ;
 int IEEE80211_SCAN_FAIL_TIMEOUT ;
 scalar_t__ IEEE80211_S_INIT ;
 int IEEE80211_S_SCAN ;
 int IEEE80211_UNLOCK (TYPE_1__*) ;
 int ieee80211_new_state_locked (struct ieee80211vap*,int ,int ) ;

__attribute__((used)) static void
ieee80211_tx_mgt_timeout(void *arg)
{
 struct ieee80211vap *vap = arg;

 IEEE80211_LOCK(vap->iv_ic);
 if (vap->iv_state != IEEE80211_S_INIT &&
     (vap->iv_ic->ic_flags & IEEE80211_F_SCAN) == 0) {




  ieee80211_new_state_locked(vap, IEEE80211_S_SCAN,
   IEEE80211_SCAN_FAIL_TIMEOUT);
 }
 IEEE80211_UNLOCK(vap->iv_ic);
}
