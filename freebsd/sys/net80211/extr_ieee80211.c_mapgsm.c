
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int IEEE80211_CHAN_HALF ;
 int IEEE80211_CHAN_QUARTER ;

__attribute__((used)) static __inline int
mapgsm(u_int freq, u_int flags)
{
 freq *= 10;
 if (flags & IEEE80211_CHAN_QUARTER)
  freq += 5;
 else if (flags & IEEE80211_CHAN_HALF)
  freq += 10;
 else
  freq += 20;

 return (freq - 906*10) / 5;
}
