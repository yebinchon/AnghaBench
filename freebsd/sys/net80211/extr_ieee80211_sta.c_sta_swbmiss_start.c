
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {int iv_flags_ext; int iv_bmissthreshold; int iv_swbmiss_period; int iv_swbmiss; scalar_t__ iv_swbmiss_count; TYPE_1__* iv_bss; } ;
struct TYPE_2__ {int ni_intval; } ;


 int IEEE80211_FEXT_SWBMISS ;
 int IEEE80211_TU_TO_TICKS (int) ;
 int callout_reset (int *,int ,int ,struct ieee80211vap*) ;
 int ieee80211_swbmiss ;

__attribute__((used)) static void
sta_swbmiss_start(struct ieee80211vap *vap)
{

 if (vap->iv_flags_ext & IEEE80211_FEXT_SWBMISS) {





  vap->iv_swbmiss_period = IEEE80211_TU_TO_TICKS(
      2 * vap->iv_bmissthreshold * vap->iv_bss->ni_intval);
  vap->iv_swbmiss_count = 0;
  callout_reset(&vap->iv_swbmiss, vap->iv_swbmiss_period,
      ieee80211_swbmiss, vap);
 }
}
