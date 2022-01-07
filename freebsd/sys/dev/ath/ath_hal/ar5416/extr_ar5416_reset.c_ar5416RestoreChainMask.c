
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_rx_chainmask; } ;


 TYPE_1__* AH5416 (struct ath_hal*) ;
 int AR_PHY_CAL_CHAINMASK ;
 int AR_PHY_RX_CHAINMASK ;
 scalar_t__ IS_5416V1 (struct ath_hal*) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

void
ar5416RestoreChainMask(struct ath_hal *ah)
{
 int rx_chainmask = AH5416(ah)->ah_rx_chainmask;

 if (IS_5416V1(ah) && (rx_chainmask == 0x5 || rx_chainmask == 0x3)) {
  OS_REG_WRITE(ah, AR_PHY_RX_CHAINMASK, rx_chainmask);
  OS_REG_WRITE(ah, AR_PHY_CAL_CHAINMASK, rx_chainmask);
 }
}
