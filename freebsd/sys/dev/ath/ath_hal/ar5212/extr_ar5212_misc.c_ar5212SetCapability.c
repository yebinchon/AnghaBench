
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ath_hal_5212 {int ah_miscMode; int ah_diversity; int ah_tpcEnabled; int ah_txPowerIndexOffset; int ah_macTPC; int (* ah_aniControl ) (struct ath_hal*,int const,int) ;int ah_staId1Defaults; int ah_phyPowerOn; } ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int halTsfAddSupport; int halTkipMicTxRxKeySupport; } ;
struct TYPE_4__ {int ah_diagreg; TYPE_1__ ah_caps; } ;
typedef int HAL_STATUS ;
typedef int HAL_CAPABILITY_TYPE ;
typedef TYPE_1__ HAL_CAPABILITIES ;
typedef int HAL_BOOL ;
typedef int HAL_ANI_CMD ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 int AH_FALSE ;
 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 int AR_DIAG_SW ;
 int AR_MISC_MODE ;
 int AR_MISC_MODE_MIC_NEW_LOC_ENABLE ;
 int AR_MISC_MODE_TX_ADD_TSF ;
 int AR_PHY_CCK_DETECT ;
 int AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV ;
 int AR_PHY_RESTART ;
 int AR_PHY_RESTART_DIV_GC ;
 int AR_STA_ID1_CRPT_MIC_ENABLE ;
 int AR_STA_ID1_MCAST_KSRCH ;
 int AR_TPC ;
 int AR_TPC_ACK ;
 int AR_TPC_CTS ;
 int MS (int,int) ;
 int N (int const*) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int SM (int,int) ;
 int ath_hal_setcapability (struct ath_hal*,int,int,int,int *) ;
 int stub1 (struct ath_hal*,int const,int) ;

HAL_BOOL
ar5212SetCapability(struct ath_hal *ah, HAL_CAPABILITY_TYPE type,
 uint32_t capability, uint32_t setting, HAL_STATUS *status)
{

 struct ath_hal_5212 *ahp = AH5212(ah);
 const HAL_CAPABILITIES *pCap = &AH_PRIVATE(ah)->ah_caps;
 uint32_t v;

 switch (type) {
 case 133:
  if (setting)
   ahp->ah_staId1Defaults |= AR_STA_ID1_CRPT_MIC_ENABLE;
  else
   ahp->ah_staId1Defaults &= ~AR_STA_ID1_CRPT_MIC_ENABLE;
  return AH_TRUE;
 case 132:
  if (!pCap->halTkipMicTxRxKeySupport)
   return AH_FALSE;

  if (setting)
   ahp->ah_miscMode &= ~AR_MISC_MODE_MIC_NEW_LOC_ENABLE;
  else
   ahp->ah_miscMode |= AR_MISC_MODE_MIC_NEW_LOC_ENABLE;

  OS_REG_WRITE(ah, AR_MISC_MODE, OS_REG_READ(ah, AR_MISC_MODE) | ahp->ah_miscMode);
  return AH_TRUE;
 case 137:
  switch (capability) {
  case 0:
   return AH_FALSE;
  case 1:
   if (ahp->ah_phyPowerOn) {
    if (capability == 134) {
     v = OS_REG_READ(ah, AR_PHY_CCK_DETECT);
     if (setting)
      v |= AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV;
     else
      v &= ~AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV;
     OS_REG_WRITE(ah, AR_PHY_CCK_DETECT, v);
    }
   }
   ahp->ah_diversity = (setting != 0);
   return AH_TRUE;

  case 134:
   if (! ahp->ah_phyPowerOn)
    return AH_FALSE;
   v = OS_REG_READ(ah, AR_PHY_RESTART);
   v &= ~AR_PHY_RESTART_DIV_GC;
   v |= SM(setting, AR_PHY_RESTART_DIV_GC);
   OS_REG_WRITE(ah, AR_PHY_RESTART, v);
   return AH_TRUE;
  default:
   return AH_FALSE;
  }
 case 138:





  AH_PRIVATE(ah)->ah_diagreg = setting;
  OS_REG_WRITE(ah, AR_DIAG_SW, AH_PRIVATE(ah)->ah_diagreg);
  return AH_TRUE;
 case 131:
  ahp->ah_tpcEnabled = (setting != 0);
  return AH_TRUE;
 case 135:
  if (setting)
   ahp->ah_staId1Defaults |= AR_STA_ID1_MCAST_KSRCH;
  else
   ahp->ah_staId1Defaults &= ~AR_STA_ID1_MCAST_KSRCH;
  return AH_TRUE;
 case 130:
 case 129:
  setting += ahp->ah_txPowerIndexOffset;
  if (setting > 63)
   setting = 63;
  if (type == 130) {
   ahp->ah_macTPC &= AR_TPC_ACK;
   ahp->ah_macTPC |= MS(setting, AR_TPC_ACK);
  } else {
   ahp->ah_macTPC &= AR_TPC_CTS;
   ahp->ah_macTPC |= MS(setting, AR_TPC_CTS);
  }
  OS_REG_WRITE(ah, AR_TPC, ahp->ah_macTPC);
  return AH_TRUE;
 case 136: {


  static const HAL_ANI_CMD cmds[] = {
   140,
   143,
   142,
   141,
   145,
   144,
   139,
  };
  return capability < (sizeof(cmds)/sizeof(cmds[0])) ?
   AH5212(ah)->ah_aniControl(ah, cmds[capability], setting) :
   AH_FALSE;
 }
 case 128:
  if (pCap->halTsfAddSupport) {
   if (setting)
    ahp->ah_miscMode |= AR_MISC_MODE_TX_ADD_TSF;
   else
    ahp->ah_miscMode &= ~AR_MISC_MODE_TX_ADD_TSF;
   return AH_TRUE;
  }

 default:
  return ath_hal_setcapability(ah, type, capability,
    setting, status);
 }

}
