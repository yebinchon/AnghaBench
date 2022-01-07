
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct ieee80211_channel {int ic_ieee; } ;


 int IEEE80211_CHAN_ANY ;
 struct ieee80211_channel const* IEEE80211_CHAN_ANYC ;
 int ic_printf (struct ieee80211com*,char*) ;

int
ieee80211_chan2ieee(struct ieee80211com *ic, const struct ieee80211_channel *c)
{
 if (c == ((void*)0)) {
  ic_printf(ic, "invalid channel (NULL)\n");
  return 0;
 }
 return (c == IEEE80211_CHAN_ANYC ? IEEE80211_CHAN_ANY : c->ic_ieee);
}
