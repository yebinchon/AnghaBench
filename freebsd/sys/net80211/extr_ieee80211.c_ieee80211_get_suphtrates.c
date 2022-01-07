
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_htrateset {int dummy; } ;
struct ieee80211com {struct ieee80211_htrateset const ic_sup_htrates; } ;
struct ieee80211_channel {int dummy; } ;



const struct ieee80211_htrateset *
ieee80211_get_suphtrates(struct ieee80211com *ic,
    const struct ieee80211_channel *c)
{
 return &ic->ic_sup_htrates;
}
