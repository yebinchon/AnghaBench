
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_vap {scalar_t__ curr_mode; int tsf_sync_adhoc_task; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {int dummy; } ;


 scalar_t__ R92C_MSR_NOLINK ;
 struct rtwn_vap* RTWN_VAP (struct ieee80211vap*) ;
 int ieee80211_runtask (struct ieee80211com*,int *) ;

__attribute__((used)) static void
rtwn_tsf_sync_adhoc(void *arg)
{
 struct ieee80211vap *vap = arg;
 struct ieee80211com *ic = vap->iv_ic;
 struct rtwn_vap *uvp = RTWN_VAP(vap);

 if (uvp->curr_mode != R92C_MSR_NOLINK) {

  ieee80211_runtask(ic, &uvp->tsf_sync_adhoc_task);
 }
}
