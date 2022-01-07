
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_rateioctl_rt {int* ratecode; } ;


 int IEEE80211_RATE_MCS ;

__attribute__((used)) static inline int
dot11rate(struct ath_rateioctl_rt *rt, int rix)
{

 if (rt->ratecode[rix] & IEEE80211_RATE_MCS)
  return rt->ratecode[rix] & ~(IEEE80211_RATE_MCS);
 else
  return (rt->ratecode[rix] / 2);
}
