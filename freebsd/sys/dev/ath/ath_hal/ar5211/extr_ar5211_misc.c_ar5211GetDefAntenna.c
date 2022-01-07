
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ath_hal {int dummy; } ;


 int AR_DEF_ANTENNA ;
 int OS_REG_READ (struct ath_hal*,int ) ;

u_int
ar5211GetDefAntenna(struct ath_hal *ah)
{
 return (OS_REG_READ(ah, AR_DEF_ANTENNA) & 0x7);
}
