
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int int16_t ;


 int AR_PHY (int) ;
 int OS_REG_READ (struct ath_hal*,int ) ;

int16_t
ar5210GetNoiseFloor(struct ath_hal *ah)
{
 int16_t nf;

 nf = (OS_REG_READ(ah, AR_PHY(25)) >> 19) & 0x1ff;
 if (nf & 0x100)
  nf = 0 - ((nf ^ 0x1ff) + 1);
 return nf;
}
