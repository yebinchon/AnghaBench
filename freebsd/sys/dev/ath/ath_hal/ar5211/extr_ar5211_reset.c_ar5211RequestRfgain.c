
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_5211 {int ah_rfgainState; int ah_tx6PowerInHalfDbm; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_5211* AH5211 (struct ath_hal*) ;
 int AR_PHY_PAPD_PROBE ;
 int AR_PHY_PAPD_PROBE_NEXT_TX ;
 int AR_PHY_PAPD_PROBE_POWERTX ;
 int HAL_RFGAIN_READ_REQUESTED ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int SM (int ,int ) ;

__attribute__((used)) static void
ar5211RequestRfgain(struct ath_hal *ah)
{
 struct ath_hal_5211 *ahp = AH5211(ah);


 OS_REG_WRITE(ah, AR_PHY_PAPD_PROBE,
    SM(ahp->ah_tx6PowerInHalfDbm, AR_PHY_PAPD_PROBE_POWERTX)
  | AR_PHY_PAPD_PROBE_NEXT_TX);

 ahp->ah_rfgainState = HAL_RFGAIN_READ_REQUESTED;
}
