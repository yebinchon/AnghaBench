
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {scalar_t__ ic_freq; int ic_flags; } ;


 int IEEE80211_CHAN_ALL ;

__attribute__((used)) static __inline int
chancompar(const void *a, const void *b)
{
 const struct ieee80211_channel *ca = a;
 const struct ieee80211_channel *cb = b;

 return (ca->ic_freq == cb->ic_freq) ?
  (ca->ic_flags & IEEE80211_CHAN_ALL) -
      (cb->ic_flags & IEEE80211_CHAN_ALL) :
  ca->ic_freq - cb->ic_freq;
}
