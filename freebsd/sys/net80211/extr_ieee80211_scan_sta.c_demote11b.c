
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {scalar_t__ iv_des_mode; int iv_ic; } ;
struct ieee80211_channel {int ic_flags; int ic_freq; } ;


 int IEEE80211_CHAN_B ;
 int IEEE80211_CHAN_G ;
 int IEEE80211_CHAN_PUREG ;
 scalar_t__ IEEE80211_IS_CHAN_ANYG (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_MODE_AUTO ;
 struct ieee80211_channel* ieee80211_find_channel (int ,int ,int) ;

__attribute__((used)) static struct ieee80211_channel *
demote11b(struct ieee80211vap *vap, struct ieee80211_channel *chan)
{
 struct ieee80211_channel *c;

 if (IEEE80211_IS_CHAN_ANYG(chan) &&
     vap->iv_des_mode == IEEE80211_MODE_AUTO) {
  c = ieee80211_find_channel(vap->iv_ic, chan->ic_freq,
      (chan->ic_flags &~ (IEEE80211_CHAN_PUREG | IEEE80211_CHAN_G)) |
      IEEE80211_CHAN_B);
  if (c != ((void*)0))
   chan = c;
 }
 return chan;
}
