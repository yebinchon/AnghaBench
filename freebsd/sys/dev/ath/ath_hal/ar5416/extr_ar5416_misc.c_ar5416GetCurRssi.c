
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;


 int AR9130_PHY_CURRENT_RSSI ;
 int AR_PHY_CURRENT_RSSI ;
 scalar_t__ AR_SREV_OWL (struct ath_hal*) ;
 int OS_REG_READ (struct ath_hal*,int ) ;

uint32_t
ar5416GetCurRssi(struct ath_hal *ah)
{
 if (AR_SREV_OWL(ah))
  return (OS_REG_READ(ah, AR_PHY_CURRENT_RSSI) & 0xff);
 return (OS_REG_READ(ah, AR9130_PHY_CURRENT_RSSI) & 0xff);
}
