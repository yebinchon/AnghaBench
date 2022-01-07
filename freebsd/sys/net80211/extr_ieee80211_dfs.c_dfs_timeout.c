
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_dfs_state {int* nol_event; int nol_timer; } ;
struct ieee80211com {int ic_nchans; struct ieee80211_channel* ic_channels; struct ieee80211_dfs_state ic_dfs; } ;
struct ieee80211_channel {int ic_state; int ic_freq; int ic_ieee; } ;


 int IEEE80211_CHANSTATE_NORADAR ;
 int IEEE80211_CHANSTATE_RADAR ;
 scalar_t__ IEEE80211_IS_CHAN_RADAR (struct ieee80211_channel*) ;
 int IEEE80211_LOCK_ASSERT (struct ieee80211com*) ;
 scalar_t__ NOL_TIMEOUT ;
 int callout_schedule (int *,scalar_t__) ;
 int ic_printf (struct ieee80211com*,char*,int ,int ) ;
 int ieee80211_notify_radar (struct ieee80211com*,struct ieee80211_channel*) ;
 scalar_t__ ieee80211_time_after_eq (int,scalar_t__) ;
 int ticks ;

__attribute__((used)) static void
dfs_timeout(void *arg)
{
 struct ieee80211com *ic = arg;
 struct ieee80211_dfs_state *dfs = &ic->ic_dfs;
 struct ieee80211_channel *c;
 int i, oldest, now;

 IEEE80211_LOCK_ASSERT(ic);

 now = oldest = ticks;
 for (i = 0; i < ic->ic_nchans; i++) {
  c = &ic->ic_channels[i];
  if (IEEE80211_IS_CHAN_RADAR(c)) {
   if (ieee80211_time_after_eq(now, dfs->nol_event[i]+NOL_TIMEOUT)) {
    c->ic_state &= ~IEEE80211_CHANSTATE_RADAR;
    if (c->ic_state & IEEE80211_CHANSTATE_NORADAR) {





     ic_printf(ic, "radar on channel %u "
         "(%u MHz) cleared after timeout\n",
         c->ic_ieee, c->ic_freq);

     c->ic_state &=
         ~IEEE80211_CHANSTATE_NORADAR;
     ieee80211_notify_radar(ic, c);
    }
   } else if (dfs->nol_event[i] < oldest)
    oldest = dfs->nol_event[i];
  }
 }
 if (oldest != now) {

  callout_schedule(&dfs->nol_timer, oldest + NOL_TIMEOUT - now);
 }
}
