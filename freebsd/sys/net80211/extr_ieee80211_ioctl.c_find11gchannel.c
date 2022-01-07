
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_nchans; struct ieee80211_channel* ic_channels; } ;
struct ieee80211_channel {int ic_freq; } ;


 scalar_t__ IEEE80211_IS_CHAN_ANYG (struct ieee80211_channel const*) ;

__attribute__((used)) static int
find11gchannel(struct ieee80211com *ic, int start, int freq)
{
 const struct ieee80211_channel *c;
 int i;

 for (i = start+1; i < ic->ic_nchans; i++) {
  c = &ic->ic_channels[i];
  if (c->ic_freq == freq && IEEE80211_IS_CHAN_ANYG(c))
   return 1;
 }

 for (i = 0; i < start; i++) {
  c = &ic->ic_channels[i];
  if (c->ic_freq == freq && IEEE80211_IS_CHAN_ANYG(c))
   return 1;
 }
 return 0;
}
