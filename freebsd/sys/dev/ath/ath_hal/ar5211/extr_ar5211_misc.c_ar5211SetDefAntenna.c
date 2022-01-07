
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ath_hal {int dummy; } ;


 int AR_DEF_ANTENNA ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

void
ar5211SetDefAntenna(struct ath_hal *ah, u_int antenna)
{
 OS_REG_WRITE(ah, AR_DEF_ANTENNA, (antenna & 0x7));
}
