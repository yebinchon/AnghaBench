
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int int16_t ;


 int AR9280_PHY_EXT_MINCCA_PWR ;
 int AR9280_PHY_MINCCA_PWR ;
 int AR_PHY_CCA ;
 int AR_PHY_EXT_CCA ;
 int HALDEBUG (struct ath_hal*,int ,char*,int) ;
 int HAL_DEBUG_NFCAL ;
 int MS (int ,int ) ;
 int OS_REG_READ (struct ath_hal*,int ) ;

__attribute__((used)) static void
ar9285GetNoiseFloor(struct ath_hal *ah, int16_t nfarray[])
{
 int16_t nf;

 nf = MS(OS_REG_READ(ah, AR_PHY_CCA), AR9280_PHY_MINCCA_PWR);
 if (nf & 0x100)
  nf = 0 - ((nf ^ 0x1ff) + 1);
 HALDEBUG(ah, HAL_DEBUG_NFCAL,
     "NF calibrated [ctl] [chain 0] is %d\n", nf);
 nfarray[0] = nf;


 nf = MS(OS_REG_READ(ah, AR_PHY_EXT_CCA), AR9280_PHY_EXT_MINCCA_PWR);
 if (nf & 0x100)
  nf = 0 - ((nf ^ 0x1ff) + 1);
 HALDEBUG(ah, HAL_DEBUG_NFCAL,
     "NF calibrated [ext] [chain 0] is %d\n", nf);
 nfarray[3] = nf;


 nfarray[1] = 0;
 nfarray[4] = 0;


 nfarray[2] = 0;
 nfarray[5] = 0;
}
