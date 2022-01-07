
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {int iv_ifp; struct ieee80211com* iv_ic; } ;
struct ieee80211_dfs_state {int cac_timer; } ;
struct ieee80211com {TYPE_1__* ic_curchan; struct ieee80211_dfs_state ic_dfs; } ;
struct TYPE_2__ {int ic_freq; int ic_ieee; } ;


 int IEEE80211_LOCK_ASSERT (struct ieee80211com*) ;
 int IEEE80211_NOTIFY_CAC_STOP ;
 scalar_t__ callout_pending (int *) ;
 int callout_stop (int *) ;
 int ieee80211_notify_cac (struct ieee80211com*,TYPE_1__*,int ) ;
 int if_printf (int ,char*,int ,int ) ;

void
ieee80211_dfs_cac_stop(struct ieee80211vap *vap)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct ieee80211_dfs_state *dfs = &ic->ic_dfs;

 IEEE80211_LOCK_ASSERT(ic);


 if (callout_pending(&dfs->cac_timer)) {
  if_printf(vap->iv_ifp, "stop CAC timer on channel %u (%u MHz)\n",
      ic->ic_curchan->ic_ieee, ic->ic_curchan->ic_freq);
  ieee80211_notify_cac(ic, ic->ic_curchan,
      IEEE80211_NOTIFY_CAC_STOP);
 }
 callout_stop(&dfs->cac_timer);
}
