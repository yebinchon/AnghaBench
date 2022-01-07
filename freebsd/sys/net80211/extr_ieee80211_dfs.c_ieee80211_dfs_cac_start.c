
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {int iv_ifp; struct ieee80211com* iv_ic; } ;
struct ieee80211_dfs_state {int cac_timer; } ;
struct ieee80211com {TYPE_1__* ic_curchan; struct ieee80211_dfs_state ic_dfs; } ;
struct TYPE_2__ {int ic_freq; int ic_ieee; } ;


 int CAC_TIMEOUT ;
 int IEEE80211_LOCK_ASSERT (struct ieee80211com*) ;
 int IEEE80211_NOTIFY_CAC_START ;
 int cac_timeout ;
 int callout_reset (int *,int ,int ,struct ieee80211vap*) ;
 int ieee80211_notify_cac (struct ieee80211com*,TYPE_1__*,int ) ;
 int if_printf (int ,char*,int ,int ,int ) ;
 int ticks_to_secs (int ) ;

void
ieee80211_dfs_cac_start(struct ieee80211vap *vap)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct ieee80211_dfs_state *dfs = &ic->ic_dfs;

 IEEE80211_LOCK_ASSERT(ic);

 callout_reset(&dfs->cac_timer, CAC_TIMEOUT, cac_timeout, vap);
 if_printf(vap->iv_ifp, "start %d second CAC timer on channel %u (%u MHz)\n",
     ticks_to_secs(CAC_TIMEOUT),
     ic->ic_curchan->ic_ieee, ic->ic_curchan->ic_freq);
 ieee80211_notify_cac(ic, ic->ic_curchan, IEEE80211_NOTIFY_CAC_START);
}
