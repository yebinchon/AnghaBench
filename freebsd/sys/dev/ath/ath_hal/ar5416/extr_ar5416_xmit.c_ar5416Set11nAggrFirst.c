
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_int ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar5416_desc {int ds_ctl1; int ds_ctl6; int ds_ctl0; int ds_ctl2; int ds_ctl3; } ;


 struct ar5416_desc* AR5416DESC (struct ath_desc*) ;
 int AR_AggrLen ;
 int AR_BurstDur ;
 int AR_CTSEnable ;
 int AR_IsAggr ;
 int AR_MoreAggr ;
 int AR_PadDelim ;
 int AR_RTSEnable ;
 int AR_SREV_MERLIN_10_OR_LATER (struct ath_hal*) ;
 int AR_XmitRate0 ;
 size_t HT_RC_2_MCS (int ) ;
 int MS (int ,int ) ;
 int SM (int,int) ;
 int* baDurationDelta ;

void
ar5416Set11nAggrFirst(struct ath_hal *ah, struct ath_desc *ds, u_int aggrLen,
    u_int numDelims)
{
 struct ar5416_desc *ads = AR5416DESC(ds);
 uint32_t flags;
 uint32_t burstDur;
 uint8_t rate;

 ads->ds_ctl1 |= (AR_IsAggr | AR_MoreAggr);

 ads->ds_ctl6 &= ~(AR_AggrLen | AR_PadDelim);
 ads->ds_ctl6 |= SM(aggrLen, AR_AggrLen);
 ads->ds_ctl6 |= SM(numDelims, AR_PadDelim);

 if (! AR_SREV_MERLIN_10_OR_LATER(ah)) {




  rate = MS(ads->ds_ctl3, AR_XmitRate0);
  flags = ads->ds_ctl0 & (AR_CTSEnable | AR_RTSEnable);





  if (flags && (ads->ds_ctl1 & AR_IsAggr)) {
   burstDur = baDurationDelta[HT_RC_2_MCS(rate)];
   ads->ds_ctl2 &= ~(AR_BurstDur);
   ads->ds_ctl2 |= SM(burstDur, AR_BurstDur);
  }
 }
}
