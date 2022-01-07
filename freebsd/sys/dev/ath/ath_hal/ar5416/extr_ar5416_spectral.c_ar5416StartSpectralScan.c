
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;


 int AR_PHY_ERR_MASK_REG ;
 int AR_PHY_ERR_RADAR ;
 int AR_PHY_SPECTRAL_SCAN ;
 int AR_PHY_SPECTRAL_SCAN_ACTIVE ;
 int AR_PHY_SPECTRAL_SCAN_ENA ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ar5416PrepSpectralScan (struct ath_hal*) ;

void
ar5416StartSpectralScan(struct ath_hal *ah)
{
 uint32_t val;

 ar5416PrepSpectralScan(ah);


 val = OS_REG_READ(ah, AR_PHY_SPECTRAL_SCAN);
 val |= AR_PHY_SPECTRAL_SCAN_ENA;
 val |= AR_PHY_SPECTRAL_SCAN_ACTIVE;
 OS_REG_WRITE(ah, AR_PHY_SPECTRAL_SCAN, val);
 val = OS_REG_READ(ah, AR_PHY_SPECTRAL_SCAN);
 val = OS_REG_READ(ah, AR_PHY_ERR_MASK_REG);
 OS_REG_WRITE(ah, AR_PHY_ERR_MASK_REG, val | AR_PHY_ERR_RADAR);
}
