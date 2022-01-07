
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath_hal_5212 {int* ah_decompMask; } ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int halCompressSupport; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int AR_CCFG ;
 int AR_CCFG_MIB_INT_EN ;
 int AR_CCFG_WIN_M ;
 int AR_CCUCFG ;
 int AR_CCUCFG_CATCHUP_EN ;
 int AR_CCUCFG_RESET_VAL ;
 int AR_COMPRESSION_WINDOW_SIZE ;
 int AR_CPCOVF ;
 int AR_DCCFG ;
 int AR_DCM_A ;
 int AR_DCM_D ;
 int HAL_DECOMP_MASK_SIZE ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

void
ar5212SetCompRegs(struct ath_hal *ah)
{
 struct ath_hal_5212 *ahp = AH5212(ah);
 int i;


 if (!AH_PRIVATE(ah)->ah_caps.halCompressSupport)
  return;

 OS_REG_WRITE(ah, AR_DCCFG, 1);

 OS_REG_WRITE(ah, AR_CCFG,
  (AR_COMPRESSION_WINDOW_SIZE >> 8) & AR_CCFG_WIN_M);

 OS_REG_WRITE(ah, AR_CCFG,
  OS_REG_READ(ah, AR_CCFG) | AR_CCFG_MIB_INT_EN);
 OS_REG_WRITE(ah, AR_CCUCFG,
  AR_CCUCFG_RESET_VAL | AR_CCUCFG_CATCHUP_EN);

 OS_REG_WRITE(ah, AR_CPCOVF, 0);


 for (i = 0; i < HAL_DECOMP_MASK_SIZE; i++) {
  OS_REG_WRITE(ah, AR_DCM_A, i);
  OS_REG_WRITE(ah, AR_DCM_D, ahp->ah_decompMask[i]);
 }
}
