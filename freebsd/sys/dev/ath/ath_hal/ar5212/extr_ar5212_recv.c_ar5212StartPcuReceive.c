
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_private {int ah_opmode; int ah_curchan; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_MARK_RX_CTL ;
 int AH_MARK_RX_CTL_PCU_START ;
 struct ath_hal_private* AH_PRIVATE (struct ath_hal*) ;
 int AR_DIAG_RX_DIS ;
 int AR_DIAG_SW ;
 int OS_MARK (struct ath_hal*,int ,int ) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ar5212AniReset (struct ath_hal*,int ,int ,int) ;
 int ar5212EnableMibCounters (struct ath_hal*) ;

void
ar5212StartPcuReceive(struct ath_hal *ah, HAL_BOOL is_scanning)
{
 struct ath_hal_private *ahp = AH_PRIVATE(ah);

 OS_MARK(ah, AH_MARK_RX_CTL, AH_MARK_RX_CTL_PCU_START);
 OS_REG_WRITE(ah, AR_DIAG_SW,
  OS_REG_READ(ah, AR_DIAG_SW) &~ AR_DIAG_RX_DIS);
 ar5212EnableMibCounters(ah);

 ar5212AniReset(ah, ahp->ah_curchan, ahp->ah_opmode, !is_scanning);
}
