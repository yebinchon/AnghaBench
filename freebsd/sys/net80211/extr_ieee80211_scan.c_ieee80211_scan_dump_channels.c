
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct ieee80211_scan_state {int ss_next; int ss_last; struct ieee80211_channel** ss_chans; struct ieee80211com* ss_ic; } ;
struct ieee80211_channel {int dummy; } ;


 int ieee80211_chan2ieee (struct ieee80211com*,struct ieee80211_channel const*) ;
 int ieee80211_channel_type_char (struct ieee80211_channel const*) ;
 int printf (char*,char const*,int,int ) ;

void
ieee80211_scan_dump_channels(const struct ieee80211_scan_state *ss)
{
 struct ieee80211com *ic = ss->ss_ic;
 const char *sep;
 int i;

 sep = "";
 for (i = ss->ss_next; i < ss->ss_last; i++) {
  const struct ieee80211_channel *c = ss->ss_chans[i];

  printf("%s%u%c", sep, ieee80211_chan2ieee(ic, c),
      ieee80211_channel_type_char(c));
  sep = ", ";
 }
}
