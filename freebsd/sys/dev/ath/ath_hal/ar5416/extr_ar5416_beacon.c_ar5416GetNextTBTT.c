
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ath_hal {int dummy; } ;


 int AR_NEXT_TBTT ;
 int OS_REG_READ (struct ath_hal*,int ) ;

uint64_t
ar5416GetNextTBTT(struct ath_hal *ah)
{
 return OS_REG_READ(ah, AR_NEXT_TBTT);
}
