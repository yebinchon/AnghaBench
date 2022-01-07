
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct ath_hal {int dummy; } ;
typedef int reg16 ;
struct TYPE_4__ {int ah_phyPowerOn; } ;
struct TYPE_3__ {scalar_t__ ah_bustype; scalar_t__ ah_ispcie; } ;
typedef scalar_t__ HAL_BOOL ;


 TYPE_2__* AH5212 (struct ath_hal*) ;
 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 scalar_t__ AH_TRUE ;
 int AR_CFG ;
 int AR_CFG_SWRD ;
 int AR_CFG_SWTD ;
 int AR_IER ;
 int AR_IER_DISABLE ;
 int AR_ISR_RAC ;
 int AR_RC ;
 int AR_RC_BB ;
 int AR_RC_MAC ;
 int AR_RC_PCI ;
 int AR_RXDP ;
 scalar_t__ HAL_BUS_TYPE_PCI ;
 int HAL_PM_AWAKE ;
 int INIT_CONFIG_STATUS ;
 int IS_5112_REV5_UP (struct ath_hal*) ;
 int OS_DELAY (int) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int PCI_COMMON_CONFIG_STATUS ;
 scalar_t__ ar5212MacStop (struct ath_hal*) ;
 scalar_t__ ar5212SetPowerMode (struct ath_hal*,int ,scalar_t__) ;
 int ath_hal_read_pci_config_space (struct ath_hal*,int ,int *,int) ;
 scalar_t__ ath_hal_wait (struct ath_hal*,int ,int,int) ;
 scalar_t__ isBigEndian () ;

__attribute__((used)) static HAL_BOOL
ar5212SetResetReg(struct ath_hal *ah, uint32_t resetMask)
{
 uint32_t mask = resetMask ? resetMask : ~0;
 HAL_BOOL rt;


 if (AH_PRIVATE(ah)->ah_ispcie) {
  resetMask &= ~AR_RC_PCI;
 }

 if (resetMask & (AR_RC_MAC | AR_RC_PCI)) {




  rt = ar5212SetPowerMode(ah, HAL_PM_AWAKE, AH_TRUE);

  if (rt != AH_TRUE) {
   return rt;
  }




  OS_REG_WRITE(ah, AR_IER, AR_IER_DISABLE);
  OS_REG_READ(ah, AR_IER);

  if (ar5212MacStop(ah) != AH_TRUE) {





   OS_DELAY(15);
   OS_REG_READ(ah, AR_RXDP);

   resetMask |= AR_RC_MAC | AR_RC_BB;

   if (! AH_PRIVATE(ah)->ah_ispcie) {
    resetMask |= AR_RC_PCI;
   }
  } else {




   resetMask &= ~AR_RC_PCI;


   OS_DELAY(15);
   OS_REG_READ(ah, AR_RXDP);
  }
 }

 (void) OS_REG_READ(ah, AR_RXDP);
 OS_REG_WRITE(ah, AR_RC, resetMask);
 OS_DELAY(15);

 mask &= (AR_RC_MAC | AR_RC_BB);
 resetMask &= (AR_RC_MAC | AR_RC_BB);
 rt = ath_hal_wait(ah, AR_RC, mask, resetMask);
        if ((resetMask & AR_RC_MAC) == 0) {
  if (isBigEndian()) {



   mask = INIT_CONFIG_STATUS | AR_CFG_SWRD;

   mask |= AR_CFG_SWTD;

   OS_REG_WRITE(ah, AR_CFG, mask);
  } else
   OS_REG_WRITE(ah, AR_CFG, INIT_CONFIG_STATUS);
  if (ar5212SetPowerMode(ah, HAL_PM_AWAKE, AH_TRUE))
   (void) OS_REG_READ(ah, AR_ISR_RAC);
 }


 AH5212(ah)->ah_phyPowerOn = ((resetMask & AR_RC_BB) == 0);
 return rt;
}
