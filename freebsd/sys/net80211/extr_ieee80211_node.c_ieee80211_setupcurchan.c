
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_htcaps; scalar_t__ ic_vhtcaps; struct ieee80211_channel* ic_curchan; int ic_rt; int ic_curmode; struct ieee80211_channel* ic_bsschan; } ;
struct ieee80211_channel {int dummy; } ;


 int IEEE80211_HTC_HT ;
 int gethtadjustflags (struct ieee80211com*) ;
 int getvhtadjustflags (struct ieee80211com*) ;
 int ieee80211_chan2mode (struct ieee80211_channel*) ;
 int ieee80211_get_ratetable (struct ieee80211_channel*) ;
 struct ieee80211_channel* ieee80211_ht_adjust_channel (struct ieee80211com*,struct ieee80211_channel*,int) ;
 int ieee80211_htchanflags (struct ieee80211_channel*) ;
 struct ieee80211_channel* ieee80211_vht_adjust_channel (struct ieee80211com*,struct ieee80211_channel*,int) ;
 int ieee80211_vhtchanflags (struct ieee80211_channel*) ;

void
ieee80211_setupcurchan(struct ieee80211com *ic, struct ieee80211_channel *c)
{
 if (ic->ic_htcaps & IEEE80211_HTC_HT) {
  int flags = gethtadjustflags(ic);







  if (flags > ieee80211_htchanflags(c))
   c = ieee80211_ht_adjust_channel(ic, c, flags);
 }






 if (ic->ic_vhtcaps != 0) {
  int flags = getvhtadjustflags(ic);
  if (flags > ieee80211_vhtchanflags(c))
   c = ieee80211_vht_adjust_channel(ic, c, flags);
 }

 ic->ic_bsschan = ic->ic_curchan = c;
 ic->ic_curmode = ieee80211_chan2mode(ic->ic_curchan);
 ic->ic_rt = ieee80211_get_ratetable(ic->ic_curchan);
}
