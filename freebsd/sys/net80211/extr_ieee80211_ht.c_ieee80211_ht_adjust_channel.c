
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct ieee80211_channel {int ic_flags; int ic_freq; } ;


 int IEEE80211_CHAN_HT ;
 int IEEE80211_CHAN_HT20 ;
 int IEEE80211_CHAN_HT40D ;
 int IEEE80211_CHAN_HT40U ;
 int IEEE80211_FHT_HT ;
 int IEEE80211_FHT_USEHT40 ;
 scalar_t__ IEEE80211_IS_CHAN_HT (struct ieee80211_channel*) ;
 int IEEE80211_IS_CHAN_HT20 (struct ieee80211_channel*) ;
 int IEEE80211_IS_CHAN_HT40 (struct ieee80211_channel*) ;
 struct ieee80211_channel* findhtchan (struct ieee80211com*,struct ieee80211_channel*,int ) ;
 struct ieee80211_channel* ieee80211_find_channel (struct ieee80211com*,int ,int) ;

struct ieee80211_channel *
ieee80211_ht_adjust_channel(struct ieee80211com *ic,
 struct ieee80211_channel *chan, int flags)
{
 struct ieee80211_channel *c;

 if (flags & IEEE80211_FHT_HT) {

  if (flags & IEEE80211_FHT_USEHT40) {
   if (!IEEE80211_IS_CHAN_HT40(chan)) {

    c = findhtchan(ic, chan, IEEE80211_CHAN_HT40U);
    if (c == ((void*)0))
     c = findhtchan(ic, chan,
      IEEE80211_CHAN_HT40D);
    if (c == ((void*)0))
     c = findhtchan(ic, chan,
      IEEE80211_CHAN_HT20);
    if (c != ((void*)0))
     chan = c;
   }
  } else if (!IEEE80211_IS_CHAN_HT20(chan)) {
   c = findhtchan(ic, chan, IEEE80211_CHAN_HT20);
   if (c != ((void*)0))
    chan = c;
  }
 } else if (IEEE80211_IS_CHAN_HT(chan)) {

  c = ieee80211_find_channel(ic, chan->ic_freq,
      chan->ic_flags &~ IEEE80211_CHAN_HT);
  if (c != ((void*)0))
   chan = c;
 }
 return chan;
}
