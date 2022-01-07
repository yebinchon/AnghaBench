
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct ath_hal_5212 {int* ah_decompMask; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 int AH_FALSE ;
 int AH_TRUE ;
 int AR_DCM_A ;
 int AR_DCM_D ;
 size_t AR_DCM_D_EN ;
 size_t HAL_DECOMP_MASK_SIZE ;
 int OS_REG_WRITE (struct ath_hal*,int ,size_t) ;

HAL_BOOL
ar5212SetDecompMask(struct ath_hal *ah, uint16_t keyidx, int en)
{
 struct ath_hal_5212 *ahp = AH5212(ah);

        if (keyidx >= HAL_DECOMP_MASK_SIZE)
                return AH_FALSE;
        OS_REG_WRITE(ah, AR_DCM_A, keyidx);
        OS_REG_WRITE(ah, AR_DCM_D, en ? AR_DCM_D_EN : 0);
        ahp->ah_decompMask[keyidx] = en;

        return AH_TRUE;
}
