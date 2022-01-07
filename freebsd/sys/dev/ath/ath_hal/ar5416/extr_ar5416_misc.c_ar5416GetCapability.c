
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ath_hal {int ah_macVersion; } ;
struct TYPE_2__ {int ah_miscMode; } ;
typedef int HAL_STATUS ;
typedef int HAL_CAPABILITY_TYPE ;


 TYPE_1__* AH5212 (struct ath_hal*) ;
 int AR_PCU_TXOP_TBTT_LIMIT_ENA ;
 int AR_SREV_HOWL (struct ath_hal*) ;
 int AR_SREV_MERLIN (struct ath_hal*) ;
 int AR_SREV_SOWL (struct ath_hal*) ;
 int AR_XSREV_VERSION_OWL_PCI ;
 int AR_XSREV_VERSION_OWL_PCIE ;







 int HAL_ENOTSUPP ;
 int HAL_ENXIO ;
 int HAL_OK ;
 int ar5212GetCapability (struct ath_hal*,int,int,int*) ;

HAL_STATUS
ar5416GetCapability(struct ath_hal *ah, HAL_CAPABILITY_TYPE type,
        uint32_t capability, uint32_t *result)
{
 switch (type) {
 case 131:
  switch (capability) {
  case 133:
   return (AR_SREV_HOWL(ah) || AR_SREV_SOWL(ah)) ? HAL_OK : HAL_ENOTSUPP;
  case 134:
   return (AR_SREV_HOWL(ah) || AR_SREV_SOWL(ah)) ? HAL_OK : HAL_ENOTSUPP;
  case 132:
   return AR_SREV_MERLIN(ah) ? HAL_OK : HAL_ENOTSUPP;
  }
  break;
 case 128:
  return ((ah->ah_macVersion == AR_XSREV_VERSION_OWL_PCI) ||
      (ah->ah_macVersion == AR_XSREV_VERSION_OWL_PCIE) ||
      AR_SREV_HOWL(ah) || AR_SREV_SOWL(ah)) ?
   HAL_OK : HAL_ENOTSUPP;
 case 130:
  return HAL_ENXIO;
 case 129:
  if (capability == 0)
   return (HAL_OK);
  if (capability != 1)
   return (HAL_ENOTSUPP);
  (*result) =
      !! (AH5212(ah)->ah_miscMode & AR_PCU_TXOP_TBTT_LIMIT_ENA);
  return (HAL_OK);
 default:
  break;
 }
 return ar5212GetCapability(ah, type, capability, result);
}
