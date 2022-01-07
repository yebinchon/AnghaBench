
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct ath_hal {int dummy; } ;


 int AR_STA_ID1 ;
 int AR_STA_ID1_DEFAULT_ANTENNA ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

void
ar5210SetDefAntenna(struct ath_hal *ah, u_int antenna)
{
 uint32_t val = OS_REG_READ(ah, AR_STA_ID1);

 if (antenna != (val & AR_STA_ID1_DEFAULT_ANTENNA ? 2 : 1)) {



  OS_REG_WRITE(ah, AR_STA_ID1, val | AR_STA_ID1_DEFAULT_ANTENNA);
 }
}
