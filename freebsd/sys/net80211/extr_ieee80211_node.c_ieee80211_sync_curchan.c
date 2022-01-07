
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int (* ic_set_channel ) (struct ieee80211com*) ;struct ieee80211_channel* ic_curchan; int ic_rt; int ic_curmode; } ;
struct ieee80211_channel {int dummy; } ;


 int IEEE80211_LOCK (struct ieee80211com*) ;
 int IEEE80211_UNLOCK (struct ieee80211com*) ;
 int gethtadjustflags (struct ieee80211com*) ;
 int getvhtadjustflags (struct ieee80211com*) ;
 int ieee80211_chan2mode (struct ieee80211_channel*) ;
 int ieee80211_get_ratetable (struct ieee80211_channel*) ;
 struct ieee80211_channel* ieee80211_ht_adjust_channel (struct ieee80211com*,struct ieee80211_channel*,int ) ;
 int ieee80211_radiotap_chan_change (struct ieee80211com*) ;
 struct ieee80211_channel* ieee80211_vht_adjust_channel (struct ieee80211com*,struct ieee80211_channel*,int ) ;
 int stub1 (struct ieee80211com*) ;

void
ieee80211_sync_curchan(struct ieee80211com *ic)
{
 struct ieee80211_channel *c;

 c = ieee80211_ht_adjust_channel(ic, ic->ic_curchan, gethtadjustflags(ic));
 c = ieee80211_vht_adjust_channel(ic, c, getvhtadjustflags(ic));

 if (c != ic->ic_curchan) {
  ic->ic_curchan = c;
  ic->ic_curmode = ieee80211_chan2mode(ic->ic_curchan);
  ic->ic_rt = ieee80211_get_ratetable(ic->ic_curchan);
  IEEE80211_UNLOCK(ic);
  ic->ic_set_channel(ic);
  ieee80211_radiotap_chan_change(ic);
  IEEE80211_LOCK(ic);
 }
}
