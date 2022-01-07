
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {struct ieee80211_rateset const* ic_sup_rates; } ;
struct ieee80211_rateset {int dummy; } ;
struct ieee80211_channel {int dummy; } ;


 size_t ieee80211_chan2mode (struct ieee80211_channel const*) ;

const struct ieee80211_rateset *
ieee80211_get_suprates(struct ieee80211com *ic, const struct ieee80211_channel *c)
{

 return &ic->ic_sup_rates[ieee80211_chan2mode(c)];
}
