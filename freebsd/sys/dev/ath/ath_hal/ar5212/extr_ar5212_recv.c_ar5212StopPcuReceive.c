
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int AH_MARK_RX_CTL ;
 int AH_MARK_RX_CTL_PCU_STOP ;
 int AR_DIAG_RX_DIS ;
 int AR_DIAG_SW ;
 int OS_MARK (struct ath_hal*,int ,int ) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ar5212DisableMibCounters (struct ath_hal*) ;

void
ar5212StopPcuReceive(struct ath_hal *ah)
{
 OS_MARK(ah, AH_MARK_RX_CTL, AH_MARK_RX_CTL_PCU_STOP);
 OS_REG_WRITE(ah, AR_DIAG_SW,
  OS_REG_READ(ah, AR_DIAG_SW) | AR_DIAG_RX_DIS);
 ar5212DisableMibCounters(ah);
}
