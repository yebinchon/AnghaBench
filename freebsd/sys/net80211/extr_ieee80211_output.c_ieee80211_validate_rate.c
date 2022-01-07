
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211com {int ic_htcaps; int ic_txstream; int ic_rt; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;


 int EINVAL ;
 int IEEE80211_HTC_HT ;
 int IEEE80211_HTC_TXMCS32 ;
 int IEEE80211_HTC_TXUNEQUAL ;
 scalar_t__ IEEE80211_IS_HT_RATE (int) ;
 int IEEE80211_RV (int) ;
 int ieee80211_isratevalid (int ,int) ;

__attribute__((used)) static int
ieee80211_validate_rate(struct ieee80211_node *ni, uint8_t rate)
{
 struct ieee80211com *ic = ni->ni_ic;

 if (IEEE80211_IS_HT_RATE(rate)) {
  if ((ic->ic_htcaps & IEEE80211_HTC_HT) == 0)
   return (EINVAL);

  rate = IEEE80211_RV(rate);
  if (rate <= 31) {
   if (rate > ic->ic_txstream * 8 - 1)
    return (EINVAL);

   return (0);
  }

  if (rate == 32) {
   if ((ic->ic_htcaps & IEEE80211_HTC_TXMCS32) == 0)
    return (EINVAL);

   return (0);
  }

  if ((ic->ic_htcaps & IEEE80211_HTC_TXUNEQUAL) == 0)
   return (EINVAL);

  switch (ic->ic_txstream) {
  case 0:
  case 1:
   return (EINVAL);
  case 2:
   if (rate > 38)
    return (EINVAL);

   return (0);
  case 3:
   if (rate > 52)
    return (EINVAL);

   return (0);
  case 4:
  default:
   if (rate > 76)
    return (EINVAL);

   return (0);
  }
 }

 if (!ieee80211_isratevalid(ic->ic_rt, rate))
  return (EINVAL);

 return (0);
}
