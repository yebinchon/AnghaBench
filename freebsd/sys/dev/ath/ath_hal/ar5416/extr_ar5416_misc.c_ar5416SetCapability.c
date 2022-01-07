
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_6__ {int ah_miscMode; } ;
struct TYPE_4__ {int halRxChainMask; int halRxStreams; int halTxChainMask; int halTxStreams; } ;
struct TYPE_5__ {TYPE_1__ ah_caps; } ;
typedef int HAL_STATUS ;
typedef int HAL_CAPABILITY_TYPE ;
typedef TYPE_1__ HAL_CAPABILITIES ;
typedef int HAL_BOOL ;


 TYPE_3__* AH5212 (struct ath_hal*) ;
 int AH_FALSE ;
 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 int AR_EEP_RXMASK ;
 int AR_EEP_TXMASK ;
 int AR_MISC_MODE ;
 int AR_PCU_TXOP_TBTT_LIMIT_ENA ;



 int OS_REG_CLR_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;
 int ar5212SetCapability (struct ath_hal*,int,int,int,int *) ;
 int ath_hal_eepromGet (struct ath_hal*,int ,int *) ;
 int owl_get_ntxchains (int) ;

HAL_BOOL
ar5416SetCapability(struct ath_hal *ah, HAL_CAPABILITY_TYPE type,
    u_int32_t capability, u_int32_t setting, HAL_STATUS *status)
{
 HAL_CAPABILITIES *pCap = &AH_PRIVATE(ah)->ah_caps;

 switch (type) {
 case 129:
  setting &= ath_hal_eepromGet(ah, AR_EEP_RXMASK, ((void*)0));
  pCap->halRxChainMask = setting;
  if (owl_get_ntxchains(setting) > 2)
   pCap->halRxStreams = 2;
  else
   pCap->halRxStreams = 1;
  return AH_TRUE;
 case 128:
  setting &= ath_hal_eepromGet(ah, AR_EEP_TXMASK, ((void*)0));
  pCap->halTxChainMask = setting;
  if (owl_get_ntxchains(setting) > 2)
   pCap->halTxStreams = 2;
  else
   pCap->halTxStreams = 1;
  return AH_TRUE;
 case 130:
  if (capability != 1)
   return AH_FALSE;
  if (setting) {
   AH5212(ah)->ah_miscMode
       |= AR_PCU_TXOP_TBTT_LIMIT_ENA;
   OS_REG_SET_BIT(ah, AR_MISC_MODE,
       AR_PCU_TXOP_TBTT_LIMIT_ENA);
  } else {
   AH5212(ah)->ah_miscMode
       &= ~AR_PCU_TXOP_TBTT_LIMIT_ENA;
   OS_REG_CLR_BIT(ah, AR_MISC_MODE,
       AR_PCU_TXOP_TBTT_LIMIT_ENA);
  }
  return AH_TRUE;
 default:
  break;
 }
 return ar5212SetCapability(ah, type, capability, setting, status);
}
