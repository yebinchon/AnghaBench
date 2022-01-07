
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct ath_hal_5210 {int ah_staId1Defaults; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 struct ath_hal_5210* AH5210 (struct ath_hal*) ;
 int AH_TRUE ;
 int AR_STA_ID1 ;
 int AR_STA_ID1_ACKCTS_6MB ;
 int OS_REG_CLR_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;

HAL_BOOL
ar5210SetAckCTSRate(struct ath_hal *ah, u_int high)
{
 struct ath_hal_5210 *ahp = AH5210(ah);

 if (high) {
  OS_REG_CLR_BIT(ah, AR_STA_ID1, AR_STA_ID1_ACKCTS_6MB);
  ahp->ah_staId1Defaults &= ~AR_STA_ID1_ACKCTS_6MB;
 } else {
  OS_REG_SET_BIT(ah, AR_STA_ID1, AR_STA_ID1_ACKCTS_6MB);
  ahp->ah_staId1Defaults |= AR_STA_ID1_ACKCTS_6MB;
 }
 return AH_TRUE;
}
