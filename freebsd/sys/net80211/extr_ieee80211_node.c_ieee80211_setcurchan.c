
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_chan_task; } ;
struct ieee80211_channel {int dummy; } ;


 int ieee80211_runtask (struct ieee80211com*,int *) ;
 int ieee80211_setupcurchan (struct ieee80211com*,struct ieee80211_channel*) ;

void
ieee80211_setcurchan(struct ieee80211com *ic, struct ieee80211_channel *c)
{
 ieee80211_setupcurchan(ic, c);
 ieee80211_runtask(ic, &ic->ic_chan_task);
}
