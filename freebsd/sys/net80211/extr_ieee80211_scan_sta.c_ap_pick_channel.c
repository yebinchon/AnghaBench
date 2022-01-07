
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_table {scalar_t__* st_maxrssi; } ;
struct ieee80211_scan_state {int ss_last; struct ieee80211_channel** ss_chans; struct sta_table* ss_priv; } ;
struct ieee80211_channel {int ic_flags; size_t ic_ieee; } ;


 scalar_t__ IEEE80211_IS_CHAN_NOHOSTAP (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_IS_CHAN_RADAR (struct ieee80211_channel*) ;
 int KASSERT (int,char*) ;

__attribute__((used)) static struct ieee80211_channel *
ap_pick_channel(struct ieee80211_scan_state *ss, int flags)
{
 struct sta_table *st = ss->ss_priv;
 struct ieee80211_channel *bestchan = ((void*)0);
 int i;



 for (i = 0; i < ss->ss_last; i++) {
  struct ieee80211_channel *chan = ss->ss_chans[i];






  if (IEEE80211_IS_CHAN_RADAR(chan))
   continue;
  if (IEEE80211_IS_CHAN_NOHOSTAP(chan))
   continue;

  if (flags != 0 && (chan->ic_flags & flags) != flags)
   continue;
  KASSERT(sizeof(chan->ic_ieee) == 1, ("ic_chan size"));

  if (st->st_maxrssi[chan->ic_ieee] == 0) {

   return chan;
  }
  if (bestchan == ((void*)0) ||
      st->st_maxrssi[chan->ic_ieee] < st->st_maxrssi[bestchan->ic_ieee])
   bestchan = chan;
 }
 return bestchan;
}
