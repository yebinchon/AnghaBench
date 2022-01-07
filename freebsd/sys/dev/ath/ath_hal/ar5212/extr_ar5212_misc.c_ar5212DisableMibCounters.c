
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int AR_MIBC ;
 int AR_MIBC_CMC ;
 int OS_REG_WRITE (struct ath_hal*,int,int) ;

void
ar5212DisableMibCounters(struct ath_hal *ah)
{
 OS_REG_WRITE(ah, AR_MIBC, AR_MIBC | AR_MIBC_CMC);
}
