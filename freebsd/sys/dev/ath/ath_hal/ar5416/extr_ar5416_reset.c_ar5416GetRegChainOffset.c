
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_rx_chainmask; int ah_tx_chainmask; } ;


 TYPE_1__* AH5416 (struct ath_hal*) ;
 scalar_t__ AR_SREV_5416_V20_OR_LATER (struct ath_hal*) ;

int
ar5416GetRegChainOffset(struct ath_hal *ah, int i)
{
 int regChainOffset;

 if (AR_SREV_5416_V20_OR_LATER(ah) &&
     (AH5416(ah)->ah_rx_chainmask == 0x5 ||
     AH5416(ah)->ah_tx_chainmask == 0x5) && (i != 0)) {



  regChainOffset = (i == 1) ? 0x2000 : 0x1000;
 } else {
  regChainOffset = i * 0x1000;
 }

 return regChainOffset;
}
