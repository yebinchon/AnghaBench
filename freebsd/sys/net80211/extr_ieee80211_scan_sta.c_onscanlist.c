
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_scan_state {int ss_last; struct ieee80211_channel const** ss_chans; } ;
struct ieee80211_channel {int dummy; } ;



__attribute__((used)) static int
onscanlist(const struct ieee80211_scan_state *ss,
 const struct ieee80211_channel *c)
{
 int i;

 for (i = 0; i < ss->ss_last; i++)
  if (ss->ss_chans[i] == c)
   return 1;
 return 0;
}
