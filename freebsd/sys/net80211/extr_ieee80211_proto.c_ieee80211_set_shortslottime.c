
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int (* ic_updateslot ) (struct ieee80211com*) ;int ic_flags; } ;


 int IEEE80211_F_SHSLOT ;
 int stub1 (struct ieee80211com*) ;

void
ieee80211_set_shortslottime(struct ieee80211com *ic, int onoff)
{
 if (onoff)
  ic->ic_flags |= IEEE80211_F_SHSLOT;
 else
  ic->ic_flags &= ~IEEE80211_F_SHSLOT;

 if (ic->ic_updateslot != ((void*)0))
  ic->ic_updateslot(ic);
}
