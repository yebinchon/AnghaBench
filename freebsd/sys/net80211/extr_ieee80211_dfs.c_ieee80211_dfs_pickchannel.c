
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v ;
typedef int uint16_t ;
struct ieee80211com {int ic_nchans; struct ieee80211_channel* ic_channels; TYPE_1__* ic_curchan; } ;
struct ieee80211_channel {int ic_flags; } ;
struct TYPE_2__ {int ic_flags; } ;


 int IEEE80211_CHAN_ALL ;
 int IEEE80211_IS_CHAN_RADAR (struct ieee80211_channel*) ;
 int get_random_bytes (int*,int) ;
 int ic_printf (struct ieee80211com*,char*) ;
 struct ieee80211_channel* ieee80211_scan_pickchannel (struct ieee80211com*,int) ;

struct ieee80211_channel *
ieee80211_dfs_pickchannel(struct ieee80211com *ic)
{
 struct ieee80211_channel *c;
 int i, flags;
 uint16_t v;




 flags = ic->ic_curchan->ic_flags & IEEE80211_CHAN_ALL;




 c = ieee80211_scan_pickchannel(ic, flags);
 if (c != ((void*)0))
  return c;





 get_random_bytes(&v, sizeof(v));
 v %= ic->ic_nchans;
 for (i = v; i < ic->ic_nchans; i++) {
  c = &ic->ic_channels[i];
  if (!IEEE80211_IS_CHAN_RADAR(c) &&
     (c->ic_flags & flags) == flags)
   return c;
 }
 for (i = 0; i < v; i++) {
  c = &ic->ic_channels[i];
  if (!IEEE80211_IS_CHAN_RADAR(c) &&
     (c->ic_flags & flags) == flags)
   return c;
 }
 ic_printf(ic, "HELP, no channel located to switch to!\n");
 return ((void*)0);
}
