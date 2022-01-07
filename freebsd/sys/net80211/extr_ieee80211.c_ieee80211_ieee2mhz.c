
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int IEEE80211_CHAN_2GHZ ;
 int IEEE80211_CHAN_5GHZ ;
 int IEEE80211_CHAN_GSM ;
 int IEEE80211_CHAN_HALF ;
 int IEEE80211_CHAN_QUARTER ;

u_int
ieee80211_ieee2mhz(u_int chan, u_int flags)
{
 if (flags & IEEE80211_CHAN_GSM)
  return 907 + 5 * (chan / 10);
 if (flags & IEEE80211_CHAN_2GHZ) {
  if (chan == 14)
   return 2484;
  if (chan < 14)
   return 2407 + chan*5;
  else
   return 2512 + ((chan-15)*20);
 } else if (flags & IEEE80211_CHAN_5GHZ) {
  if (flags & (IEEE80211_CHAN_HALF|IEEE80211_CHAN_QUARTER)) {
   chan -= 37;
   return 4940 + chan*5 + (chan % 5 ? 2 : 0);
  }
  return 5000 + (chan*5);
 } else {

  if (chan == 14)
   return 2484;
  if (chan < 14)
   return 2407 + chan*5;
  if (chan < 27)
   return 2512 + ((chan-15)*20);
  return 5000 + (chan*5);
 }
}
