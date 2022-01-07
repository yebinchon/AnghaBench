
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {scalar_t__ ah_currentRD; } ;
typedef int HAL_STATUS ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int AR_EEP_WRITEPROTECT ;
 int HAL_EEWRITE ;
 int HAL_EINVAL ;
 int HAL_EIO ;
 scalar_t__ ath_hal_eepromGetFlag (struct ath_hal*,int ) ;

HAL_BOOL
ar5210SetRegulatoryDomain(struct ath_hal *ah,
 uint16_t regDomain, HAL_STATUS *status)
{
 HAL_STATUS ecode;

 if (AH_PRIVATE(ah)->ah_currentRD == regDomain) {
  ecode = HAL_EINVAL;
  goto bad;
 }





 if (ath_hal_eepromGetFlag(ah, AR_EEP_WRITEPROTECT)) {
  ecode = HAL_EEWRITE;
  goto bad;
 }
 ecode = HAL_EIO;
bad:
 if (status)
  *status = ecode;
 return AH_FALSE;
}
