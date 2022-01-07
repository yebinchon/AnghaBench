
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;


 scalar_t__ AR_PHY_BASE ;
 int OS_REG_READ (struct ath_hal*,scalar_t__) ;
 int OS_REG_WRITE (struct ath_hal*,scalar_t__,int) ;
 int ath_hal_reverseBits (int,int) ;

__attribute__((used)) static uint32_t
ar5211GetRadioRev(struct ath_hal *ah)
{
 uint32_t val;
 int i;

 OS_REG_WRITE(ah, (AR_PHY_BASE + (0x34 << 2)), 0x00001c16);
 for (i = 0; i < 8; i++)
  OS_REG_WRITE(ah, (AR_PHY_BASE + (0x20 << 2)), 0x00010000);
 val = (OS_REG_READ(ah, AR_PHY_BASE + (256 << 2)) >> 24) & 0xff;
 val = ((val & 0xf0) >> 4) | ((val & 0x0f) << 4);
 return ath_hal_reverseBits(val, 8);
}
