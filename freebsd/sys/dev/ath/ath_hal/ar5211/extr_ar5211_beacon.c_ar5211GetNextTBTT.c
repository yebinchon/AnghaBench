
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ath_hal {int dummy; } ;


 int AR_TIMER0 ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int TU_TO_TSF (int ) ;

uint64_t
ar5211GetNextTBTT(struct ath_hal *ah)
{

 return (((uint64_t)(OS_REG_READ(ah, AR_TIMER0))) << 10);

}
