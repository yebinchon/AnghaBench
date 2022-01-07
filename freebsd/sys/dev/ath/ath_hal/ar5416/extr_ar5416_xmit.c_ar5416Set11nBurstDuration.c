
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_int ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar5416_desc {int ds_ctl1; int ds_ctl2; int ds_ctl3; } ;


 struct ar5416_desc* AR5416DESC (struct ath_desc*) ;
 int AR_BurstDur ;
 int AR_IsAggr ;
 int AR_SREV_MERLIN_10_OR_LATER (struct ath_hal*) ;
 int AR_XmitDataTries0 ;
 size_t HT_RC_2_MCS (int ) ;
 int MS (int ,int ) ;
 int SM (scalar_t__,int ) ;
 scalar_t__* baDurationDelta ;

void
ar5416Set11nBurstDuration(struct ath_hal *ah, struct ath_desc *ds,
                                                  u_int burstDuration)
{
 struct ar5416_desc *ads = AR5416DESC(ds);
 uint32_t burstDur = 0;
 uint8_t rate;

 if (! AR_SREV_MERLIN_10_OR_LATER(ah)) {




  rate = MS(ads->ds_ctl3, AR_XmitDataTries0);





  if (ads->ds_ctl1 & AR_IsAggr) {
   burstDur = baDurationDelta[HT_RC_2_MCS(rate)];
  }
 }

 ads->ds_ctl2 &= ~AR_BurstDur;
 ads->ds_ctl2 |= SM(burstDur + burstDuration, AR_BurstDur);
}
