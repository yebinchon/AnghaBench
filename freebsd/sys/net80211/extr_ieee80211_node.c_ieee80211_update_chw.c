
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_chw_task; int ic_curchan; } ;


 int ieee80211_runtask (struct ieee80211com*,int *) ;
 int ieee80211_setupcurchan (struct ieee80211com*,int ) ;

void
ieee80211_update_chw(struct ieee80211com *ic)
{

 ieee80211_setupcurchan(ic, ic->ic_curchan);
 ieee80211_runtask(ic, &ic->ic_chw_task);
}
