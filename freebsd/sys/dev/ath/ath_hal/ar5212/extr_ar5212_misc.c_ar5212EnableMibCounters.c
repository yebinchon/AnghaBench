
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int AR_MIBC ;
 int AR_MIBC_CMC ;
 int AR_MIBC_COW ;
 int AR_MIBC_FMC ;
 int AR_MIBC_MCS ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

void
ar5212EnableMibCounters(struct ath_hal *ah)
{

 OS_REG_WRITE(ah, AR_MIBC,
     ~(AR_MIBC_COW | AR_MIBC_FMC | AR_MIBC_CMC | AR_MIBC_MCS) & 0x0f);
}
