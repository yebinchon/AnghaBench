
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;


 int AR_PHY (int) ;
 int AR_TSF_L32 ;
 int AR_TSF_U32 ;
 int OS_REG_READ (struct ath_hal*,int ) ;

uint32_t
ar5212GetRandomSeed(struct ath_hal *ah)
{
 uint32_t nf;

 nf = (OS_REG_READ(ah, AR_PHY(25)) >> 19) & 0x1ff;
 if (nf & 0x100)
  nf = 0 - ((nf ^ 0x1ff) + 1);
 return (OS_REG_READ(ah, AR_TSF_U32) ^
  OS_REG_READ(ah, AR_TSF_L32) ^ nf);
}
