
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_dfs_state {int * lastchan; int nol_timer; } ;
struct ieee80211com {int ic_nchans; TYPE_1__* ic_channels; struct ieee80211_dfs_state ic_dfs; } ;
struct TYPE_2__ {scalar_t__ ic_state; } ;


 int callout_drain (int *) ;

void
ieee80211_dfs_reset(struct ieee80211com *ic)
{
 struct ieee80211_dfs_state *dfs = &ic->ic_dfs;
 int i;



 callout_drain(&dfs->nol_timer);
 for (i = 0; i < ic->ic_nchans; i++)
  ic->ic_channels[i].ic_state = 0;
 dfs->lastchan = ((void*)0);
}
