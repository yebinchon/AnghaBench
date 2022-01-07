
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_dfs_state {int cac_timer; int nol_timer; } ;
struct ieee80211com {int ic_set_quiet; struct ieee80211_dfs_state ic_dfs; } ;


 int IEEE80211_LOCK_OBJ (struct ieee80211com*) ;
 int callout_init_mtx (int *,int ,int ) ;
 int null_set_quiet ;

void
ieee80211_dfs_attach(struct ieee80211com *ic)
{
 struct ieee80211_dfs_state *dfs = &ic->ic_dfs;

 callout_init_mtx(&dfs->nol_timer, IEEE80211_LOCK_OBJ(ic), 0);
 callout_init_mtx(&dfs->cac_timer, IEEE80211_LOCK_OBJ(ic), 0);

 ic->ic_set_quiet = null_set_quiet;
}
