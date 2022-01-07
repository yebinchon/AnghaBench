
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;


 int ieee80211_dfs_reset (struct ieee80211com*) ;

void
ieee80211_dfs_detach(struct ieee80211com *ic)
{

 ieee80211_dfs_reset(ic);
}
