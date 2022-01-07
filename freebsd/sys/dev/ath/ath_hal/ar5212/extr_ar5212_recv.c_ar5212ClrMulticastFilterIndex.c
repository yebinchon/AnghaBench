
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_TRUE ;
 int AR_MCAST_FIL0 ;
 int AR_MCAST_FIL1 ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

HAL_BOOL
ar5212ClrMulticastFilterIndex(struct ath_hal *ah, uint32_t ix)
{
 uint32_t val;

 if (ix >= 64)
  return AH_FALSE;
 if (ix >= 32) {
  val = OS_REG_READ(ah, AR_MCAST_FIL1);
  OS_REG_WRITE(ah, AR_MCAST_FIL1, (val &~ (1<<(ix-32))));
 } else {
  val = OS_REG_READ(ah, AR_MCAST_FIL0);
  OS_REG_WRITE(ah, AR_MCAST_FIL0, (val &~ (1<<ix)));
 }
 return AH_TRUE;
}
