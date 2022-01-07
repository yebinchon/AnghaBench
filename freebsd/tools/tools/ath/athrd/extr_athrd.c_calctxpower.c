
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
typedef int int16_t ;


 int exit (int) ;
 int printf (char*) ;
 int setRateTable (struct ath_hal*,struct ieee80211_channel const*,int ,int ,int *,int *) ;

__attribute__((used)) static void
calctxpower(struct ath_hal *ah,
 int nchan, const struct ieee80211_channel *chans,
 int16_t tpcScaleReduction, int16_t powerLimit, int16_t *txpow)
{
 int16_t minpow;
 int i;

 for (i = 0; i < nchan; i++)
  if (!setRateTable(ah, &chans[i],
      tpcScaleReduction, powerLimit, &minpow, &txpow[i])) {
   printf("unable to set rate table\n");
   exit(-1);
  }
}
