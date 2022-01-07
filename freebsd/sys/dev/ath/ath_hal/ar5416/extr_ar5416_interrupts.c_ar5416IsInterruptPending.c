
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_TRUE ;
 int AR_INTR_ASYNC_CAUSE ;
 int AR_INTR_MAC_IRQ ;
 int AR_INTR_SPURIOUS ;
 int AR_INTR_SYNC_CAUSE ;
 int AR_INTR_SYNC_DEFAULT ;
 scalar_t__ AR_SREV_HOWL (struct ath_hal*) ;
 int OS_REG_READ (struct ath_hal*,int ) ;

HAL_BOOL
ar5416IsInterruptPending(struct ath_hal *ah)
{
 uint32_t isr;

 if (AR_SREV_HOWL(ah))
  return AH_TRUE;





 isr = OS_REG_READ(ah, AR_INTR_ASYNC_CAUSE);
 if (isr != AR_INTR_SPURIOUS && (isr & AR_INTR_MAC_IRQ) != 0)
  return AH_TRUE;

 isr = OS_REG_READ(ah, AR_INTR_SYNC_CAUSE);
 if (isr != AR_INTR_SPURIOUS && (isr & AR_INTR_SYNC_DEFAULT))
  return AH_TRUE;

 return AH_FALSE;
}
