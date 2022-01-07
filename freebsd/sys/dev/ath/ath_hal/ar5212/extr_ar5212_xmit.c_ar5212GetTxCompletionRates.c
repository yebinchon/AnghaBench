
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar5212_desc {int ds_ctl2; int ds_ctl3; } ;
typedef int HAL_BOOL ;


 int AH_TRUE ;
 struct ar5212_desc* AR5212DESC_CONST (struct ath_desc const*) ;
 int AR_XmitDataTries0 ;
 int AR_XmitDataTries1 ;
 int AR_XmitDataTries2 ;
 int AR_XmitDataTries3 ;
 int AR_XmitRate0 ;
 int AR_XmitRate1 ;
 int AR_XmitRate2 ;
 int AR_XmitRate3 ;
 int MS (int ,int ) ;

HAL_BOOL
ar5212GetTxCompletionRates(struct ath_hal *ah, const struct ath_desc *ds0, int *rates, int *tries)
{
 const struct ar5212_desc *ads = AR5212DESC_CONST(ds0);

 rates[0] = MS(ads->ds_ctl3, AR_XmitRate0);
 rates[1] = MS(ads->ds_ctl3, AR_XmitRate1);
 rates[2] = MS(ads->ds_ctl3, AR_XmitRate2);
 rates[3] = MS(ads->ds_ctl3, AR_XmitRate3);

 tries[0] = MS(ads->ds_ctl2, AR_XmitDataTries0);
 tries[1] = MS(ads->ds_ctl2, AR_XmitDataTries1);
 tries[2] = MS(ads->ds_ctl2, AR_XmitDataTries2);
 tries[3] = MS(ads->ds_ctl2, AR_XmitDataTries3);

 return AH_TRUE;
}
