
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;


 int AR5416_BEACON_PERIOD ;
 int AR_BEACON_PERIOD_MAX ;
 int AR_DBA_PERIOD ;
 int AR_NEXT_TBTT ;
 int AR_STA_ID1 ;
 int AR_STA_ID1_PCF ;
 int AR_STA_ID1_PWR_SAV ;
 int AR_STA_ID1_USE_DEFANT ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

void
ar5416ResetStaBeaconTimers(struct ath_hal *ah)
{
 uint32_t val;

 OS_REG_WRITE(ah, AR_NEXT_TBTT, 0);
 val = OS_REG_READ(ah, AR_STA_ID1);
 val |= AR_STA_ID1_PWR_SAV;

 OS_REG_WRITE(ah, AR_STA_ID1,
  val & ~(AR_STA_ID1_USE_DEFANT | AR_STA_ID1_PCF));
 OS_REG_WRITE(ah, AR5416_BEACON_PERIOD, AR_BEACON_PERIOD_MAX);
 OS_REG_WRITE(ah, AR_DBA_PERIOD, AR_BEACON_PERIOD_MAX);
}
