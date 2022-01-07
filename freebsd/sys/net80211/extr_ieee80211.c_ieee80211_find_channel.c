
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_nchans; int ic_channels; struct ieee80211_channel* ic_prevchan; } ;
struct ieee80211_channel {int ic_freq; int ic_flags; } ;


 int IEEE80211_CHAN_ALLTURBO ;
 struct ieee80211_channel* findchannel (int ,int ,int,int) ;

struct ieee80211_channel *
ieee80211_find_channel(struct ieee80211com *ic, int freq, int flags)
{
 struct ieee80211_channel *c;

 flags &= IEEE80211_CHAN_ALLTURBO;
 c = ic->ic_prevchan;
 if (c != ((void*)0) && c->ic_freq == freq &&
     (c->ic_flags & IEEE80211_CHAN_ALLTURBO) == flags)
  return c;

 return (findchannel(ic->ic_channels, ic->ic_nchans, freq, flags));
}
