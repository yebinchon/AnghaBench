
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ath_hal_5212 {int ah_rfgainState; scalar_t__ ah_txPowerIndexOffset; scalar_t__ ah_ofdmTxPower; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 int AR_PHY_PAPD_PROBE ;
 int AR_PHY_PAPD_PROBE_NEXT_TX ;
 int AR_PHY_PAPD_PROBE_POWERTX ;
 int HAL_RFGAIN_READ_REQUESTED ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int SM (scalar_t__,int ) ;

void
ar5212RequestRfgain(struct ath_hal *ah)
{
 struct ath_hal_5212 *ahp = AH5212(ah);
 uint32_t probePowerIndex;


 probePowerIndex = ahp->ah_ofdmTxPower + ahp->ah_txPowerIndexOffset;
 OS_REG_WRITE(ah, AR_PHY_PAPD_PROBE,
    SM(probePowerIndex, AR_PHY_PAPD_PROBE_POWERTX)
  | AR_PHY_PAPD_PROBE_NEXT_TX);

 ahp->ah_rfgainState = HAL_RFGAIN_READ_REQUESTED;
}
