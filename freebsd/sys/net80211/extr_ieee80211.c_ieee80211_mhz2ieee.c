
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int IEEE80211_CHAN_2GHZ ;
 int IEEE80211_CHAN_5GHZ ;
 int IEEE80211_CHAN_GSM ;
 scalar_t__ IS_FREQ_IN_PSB (int) ;
 int mapgsm (int,int) ;
 int mappsb (int,int) ;

int
ieee80211_mhz2ieee(u_int freq, u_int flags)
{

 if (flags & IEEE80211_CHAN_GSM)
  return mapgsm(freq, flags);
 if (flags & IEEE80211_CHAN_2GHZ) {
  if (freq == 2484)
   return 14;
  if (freq < 2484)
   return ((int) freq - 2407) / 5;
  else
   return 15 + ((freq - 2512) / 20);
 } else if (flags & IEEE80211_CHAN_5GHZ) {
  if (freq <= 5000) {

   if (((freq) > 4940 && (freq) < 4990))
    return mappsb(freq, flags);
   return (freq - 4000) / 5;
  } else
   return (freq - 5000) / 5;
 } else {
  if (freq == 2484)
   return 14;
  if (freq < 2484) {
   if (907 <= freq && freq <= 922)
    return mapgsm(freq, flags);
   return ((int) freq - 2407) / 5;
  }
  if (freq < 5000) {
   if (((freq) > 4940 && (freq) < 4990))
    return mappsb(freq, flags);
   else if (freq > 4900)
    return (freq - 4000) / 5;
   else
    return 15 + ((freq - 2512) / 20);
  }
  return (freq - 5000) / 5;
 }

}
