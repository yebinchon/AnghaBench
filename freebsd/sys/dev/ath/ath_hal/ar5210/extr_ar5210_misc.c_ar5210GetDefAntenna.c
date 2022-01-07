
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

u_int
ar5210GetDefAntenna(struct ath_hal *ah)
{
 uint32_t val = OS_REG_READ(ah, AR_STA_ID1);
 return (val & AR_STA_ID1_DEFAULT_ANTENNA ? 2 : 1);
}
