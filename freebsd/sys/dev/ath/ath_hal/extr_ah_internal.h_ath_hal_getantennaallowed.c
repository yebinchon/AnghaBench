
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int ic_maxantgain; } ;
struct ath_hal {int dummy; } ;



__attribute__((used)) static inline int
ath_hal_getantennaallowed(struct ath_hal *ah,
    const struct ieee80211_channel *chan)
{

 if (! chan)
  return (0);

 return (chan->ic_maxantgain);
}
