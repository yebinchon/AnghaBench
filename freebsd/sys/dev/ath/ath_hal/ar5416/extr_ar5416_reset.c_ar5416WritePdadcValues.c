
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ath_hal {int dummy; } ;


 int AR_PHY_BASE ;
 int HALDEBUG (struct ath_hal*,int ,char*,int,int,int,int,int,int,int,int,int) ;
 int HAL_DEBUG_EEPROM ;
 int OS_REG_WRITE (struct ath_hal*,int,int) ;
 int ar5416GetRegChainOffset (struct ath_hal*,int) ;

void
ar5416WritePdadcValues(struct ath_hal *ah, int i, uint8_t pdadcValues[])
{
 int regOffset, regChainOffset;
 int j;
 int reg32;

 regChainOffset = ar5416GetRegChainOffset(ah, i);
 regOffset = AR_PHY_BASE + (672 << 2) + regChainOffset;

 for (j = 0; j < 32; j++) {
  reg32 = ((pdadcValues[4*j + 0] & 0xFF) << 0) |
      ((pdadcValues[4*j + 1] & 0xFF) << 8) |
      ((pdadcValues[4*j + 2] & 0xFF) << 16) |
      ((pdadcValues[4*j + 3] & 0xFF) << 24) ;
  OS_REG_WRITE(ah, regOffset, reg32);
  HALDEBUG(ah, HAL_DEBUG_EEPROM, "PDADC: Chain %d |"
      " PDADC %3d Value %3d | PDADC %3d Value %3d | PDADC %3d"
      " Value %3d | PDADC %3d Value %3d |\n",
      i,
      4*j, pdadcValues[4*j],
      4*j+1, pdadcValues[4*j + 1],
      4*j+2, pdadcValues[4*j + 2],
      4*j+3, pdadcValues[4*j + 3]);
  regOffset += 4;
 }
}
