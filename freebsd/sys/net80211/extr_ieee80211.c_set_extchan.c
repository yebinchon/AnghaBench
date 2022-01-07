
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int ic_flags; scalar_t__ ic_extieee; scalar_t__ ic_ieee; } ;


 int IEEE80211_CHAN_HT40D ;
 int IEEE80211_CHAN_HT40U ;

__attribute__((used)) static __inline void
set_extchan(struct ieee80211_channel *c)
{





 if (c->ic_flags & IEEE80211_CHAN_HT40U)
  c->ic_extieee = c->ic_ieee + 4;
 else if (c->ic_flags & IEEE80211_CHAN_HT40D)
  c->ic_extieee = c->ic_ieee - 4;
 else
  c->ic_extieee = 0;
}
