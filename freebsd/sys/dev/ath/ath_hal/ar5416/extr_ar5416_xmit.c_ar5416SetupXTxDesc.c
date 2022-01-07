
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar5416_desc {int ds_ctl3; int ds_ctl2; } ;
typedef int HAL_BOOL ;


 int AH_TRUE ;
 struct ar5416_desc* AR5416DESC (struct ath_desc*) ;
 int AR_XmitDataTries1 ;
 int AR_XmitDataTries2 ;
 int AR_XmitDataTries3 ;
 int AR_XmitRate1_S ;
 int AR_XmitRate2_S ;
 int AR_XmitRate3_S ;
 int HALASSERT (int ) ;
 int SM (int,int ) ;
 int isValidTxRate (int) ;

HAL_BOOL
ar5416SetupXTxDesc(struct ath_hal *ah, struct ath_desc *ds,
 u_int txRate1, u_int txTries1,
 u_int txRate2, u_int txTries2,
 u_int txRate3, u_int txTries3)
{
 struct ar5416_desc *ads = AR5416DESC(ds);

 if (txTries1) {
  HALASSERT(isValidTxRate(txRate1));
  ads->ds_ctl2 |= SM(txTries1, AR_XmitDataTries1);
  ads->ds_ctl3 |= (txRate1 << AR_XmitRate1_S);
 }
 if (txTries2) {
  HALASSERT(isValidTxRate(txRate2));
  ads->ds_ctl2 |= SM(txTries2, AR_XmitDataTries2);
  ads->ds_ctl3 |= (txRate2 << AR_XmitRate2_S);
 }
 if (txTries3) {
  HALASSERT(isValidTxRate(txRate3));
  ads->ds_ctl2 |= SM(txTries3, AR_XmitDataTries3);
  ads->ds_ctl3 |= (txRate3 << AR_XmitRate3_S);
 }
 return AH_TRUE;
}
