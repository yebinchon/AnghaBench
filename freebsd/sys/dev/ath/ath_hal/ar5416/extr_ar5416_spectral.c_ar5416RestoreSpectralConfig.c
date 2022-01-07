
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ath_hal {int dummy; } ;


 int AR_PHY_SPECTRAL_SCAN ;
 scalar_t__ AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT ;
 scalar_t__ OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,scalar_t__) ;
 int ar5416PrepSpectralScan (struct ath_hal*) ;

void
ar5416RestoreSpectralConfig(struct ath_hal *ah, uint32_t restoreval)
{
 uint32_t curval;

 ar5416PrepSpectralScan(ah);

 curval = OS_REG_READ(ah, AR_PHY_SPECTRAL_SCAN);

 if (restoreval != curval) {
  restoreval |= AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT;
  OS_REG_WRITE(ah, AR_PHY_SPECTRAL_SCAN, restoreval);
 }
 return;
}
