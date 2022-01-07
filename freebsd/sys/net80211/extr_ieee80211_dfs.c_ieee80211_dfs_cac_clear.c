
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_nchans; struct ieee80211_channel* ic_channels; } ;
struct ieee80211_channel {scalar_t__ ic_freq; int ic_state; } ;


 int IEEE80211_CHANSTATE_CACDONE ;

void
ieee80211_dfs_cac_clear(struct ieee80211com *ic,
 const struct ieee80211_channel *chan)
{
 int i;

 for (i = 0; i < ic->ic_nchans; i++) {
  struct ieee80211_channel *c = &ic->ic_channels[i];
  if (c->ic_freq == chan->ic_freq)
   c->ic_state &= ~IEEE80211_CHANSTATE_CACDONE;
 }
}
