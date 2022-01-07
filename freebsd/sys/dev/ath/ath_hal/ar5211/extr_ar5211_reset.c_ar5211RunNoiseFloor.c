
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct ath_hal {int dummy; } ;
typedef int int16_t ;
struct TYPE_4__ {TYPE_1__* ah_curchan; } ;
struct TYPE_3__ {int ic_freq; } ;


 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int AR_PHY (int) ;
 int AR_PHY_ACTIVE ;
 int AR_PHY_AGC_CONTROL ;
 int AR_PHY_AGC_CONTROL_NF ;
 int HALASSERT (int) ;
 int HALDEBUG (struct ath_hal*,int ,char*,int,...) ;
 int HAL_DEBUG_NFCAL ;
 int OS_DELAY (int) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ar5211GetNoiseFloor (struct ath_hal*) ;

int16_t
ar5211RunNoiseFloor(struct ath_hal *ah, uint8_t runTime, int16_t startingNF)
{
 int i, searchTime;

 HALASSERT(runTime <= 7);


 OS_REG_WRITE(ah, AR_PHY(25),
  (OS_REG_READ(ah, AR_PHY(25)) & ~0xFFF) |
    ((runTime << 9) & 0xE00) | (startingNF & 0x1FF));

 OS_REG_WRITE(ah, AR_PHY_AGC_CONTROL,
  OS_REG_READ(ah, AR_PHY_AGC_CONTROL) | AR_PHY_AGC_CONTROL_NF);


 if (runTime == 0) {

  searchTime = 8 * 7;
 } else {

  searchTime = (runTime * 512) * 7;
 }
 for (i = 0; i < 60; i++) {
  if ((OS_REG_READ(ah, AR_PHY_AGC_CONTROL) & AR_PHY_AGC_CONTROL_NF) == 0)
   break;
  OS_DELAY(searchTime);
 }
 if (i >= 60) {
  HALDEBUG(ah, HAL_DEBUG_NFCAL,
      "NF with runTime %d failed to end on channel %d\n",
      runTime, AH_PRIVATE(ah)->ah_curchan->ic_freq);
  HALDEBUG(ah, HAL_DEBUG_NFCAL,
      "  PHY NF Reg state:	 0x%x\n",
      OS_REG_READ(ah, AR_PHY_AGC_CONTROL));
  HALDEBUG(ah, HAL_DEBUG_NFCAL,
      "  PHY Active Reg state: 0x%x\n",
      OS_REG_READ(ah, AR_PHY_ACTIVE));
  return 0;
 }

 return ar5211GetNoiseFloor(ah);
}
