
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_rx_chainmask; int ah_tx_chainmask; } ;


 TYPE_1__* AH5416 (struct ath_hal*) ;
 int AR_PHY_ANALOG_SWAP ;
 int AR_PHY_CAL_CHAINMASK ;
 int AR_PHY_RX_CHAINMASK ;
 int AR_PHY_SWAP_ALT_CHAIN ;
 int AR_SELFGEN_MASK ;
 scalar_t__ AR_SREV_HOWL (struct ath_hal*) ;
 scalar_t__ IS_5416V1 (struct ath_hal*) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

void
ar5416InitChainMasks(struct ath_hal *ah)
{
 int rx_chainmask = AH5416(ah)->ah_rx_chainmask;


 if (rx_chainmask == 0x5)
  OS_REG_SET_BIT(ah, AR_PHY_ANALOG_SWAP, AR_PHY_SWAP_ALT_CHAIN);





 if (IS_5416V1(ah) && (rx_chainmask == 0x5 || rx_chainmask == 0x3)) {
  OS_REG_WRITE(ah, AR_PHY_RX_CHAINMASK, 0x7);
  OS_REG_WRITE(ah, AR_PHY_CAL_CHAINMASK, 0x7);
 } else {
  OS_REG_WRITE(ah, AR_PHY_RX_CHAINMASK, AH5416(ah)->ah_rx_chainmask);
  OS_REG_WRITE(ah, AR_PHY_CAL_CHAINMASK, AH5416(ah)->ah_rx_chainmask);
 }
 OS_REG_WRITE(ah, AR_SELFGEN_MASK, AH5416(ah)->ah_tx_chainmask);

 if (AH5416(ah)->ah_tx_chainmask == 0x5)
  OS_REG_SET_BIT(ah, AR_PHY_ANALOG_SWAP, AR_PHY_SWAP_ALT_CHAIN);

 if (AR_SREV_HOWL(ah)) {
  OS_REG_WRITE(ah, AR_PHY_ANALOG_SWAP,
  OS_REG_READ(ah, AR_PHY_ANALOG_SWAP) | 0x00000001);
 }
}
