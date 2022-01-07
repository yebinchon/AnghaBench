
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_5212 {int ah_mibStats; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 int AR_PHY_ERR_MASK_1 ;
 int AR_PHY_ERR_MASK_2 ;
 int HALDEBUG (struct ath_hal*,int ,char*) ;
 int HAL_DEBUG_ANI ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;
 int ar5212DisableMibCounters (struct ath_hal*) ;
 int ar5212UpdateMibCounters (struct ath_hal*,int *) ;

__attribute__((used)) static void
disableAniMIBCounters(struct ath_hal *ah)
{
 struct ath_hal_5212 *ahp = AH5212(ah);

 HALDEBUG(ah, HAL_DEBUG_ANI, "Disable MIB counters\n");

 ar5212UpdateMibCounters(ah, &ahp->ah_mibStats);
 ar5212DisableMibCounters(ah);

 OS_REG_WRITE(ah, AR_PHY_ERR_MASK_1, 0);
 OS_REG_WRITE(ah, AR_PHY_ERR_MASK_2, 0);
}
