
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211vap {TYPE_2__* iv_des_chan; TYPE_1__* iv_ic; } ;
struct ieee80211_channel {scalar_t__ ic_freq; int ic_ieee; } ;
struct TYPE_4__ {scalar_t__ ic_freq; } ;
struct TYPE_3__ {int ic_chan_active; } ;


 TYPE_2__* IEEE80211_CHAN_ANYC ;
 scalar_t__ isclr (int ,int ) ;

__attribute__((used)) static int
isexcluded(struct ieee80211vap *vap, const struct ieee80211_channel *c)
{
 return (isclr(vap->iv_ic->ic_chan_active, c->ic_ieee) ||
     (vap->iv_des_chan != IEEE80211_CHAN_ANYC &&
      c->ic_freq != vap->iv_des_chan->ic_freq));
}
