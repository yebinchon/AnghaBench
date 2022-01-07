
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct ath_hal {int dummy; } ;


 int AR_TSF_L32 ;
 int AR_TSF_U32 ;
 scalar_t__ OS_REG_READ (struct ath_hal*,int ) ;

uint64_t
ar5210GetTsf64(struct ath_hal *ah)
{
 uint32_t low1, low2, u32;


 low1 = OS_REG_READ(ah, AR_TSF_L32);
 u32 = OS_REG_READ(ah, AR_TSF_U32);
 low2 = OS_REG_READ(ah, AR_TSF_L32);
 if (low2 < low1) {
  u32++;
 }
 return (((uint64_t) u32) << 32) | ((uint64_t) low2);
}
