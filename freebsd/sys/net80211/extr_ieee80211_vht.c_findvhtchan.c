
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct ieee80211_channel {int ic_flags; int ic_freq; } ;


 int IEEE80211_CHAN_VHT ;
 struct ieee80211_channel* ieee80211_find_channel (struct ieee80211com*,int ,int) ;

__attribute__((used)) static struct ieee80211_channel *
findvhtchan(struct ieee80211com *ic, struct ieee80211_channel *c, int vhtflags)
{

 return (ieee80211_find_channel(ic, c->ic_freq,
     (c->ic_flags & ~IEEE80211_CHAN_VHT) | vhtflags));
}
