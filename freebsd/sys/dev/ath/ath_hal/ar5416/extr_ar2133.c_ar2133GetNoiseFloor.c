
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_5416 {int ah_rx_chainmask; } ;
struct ath_hal {int dummy; } ;
typedef int int16_t ;


 struct ath_hal_5416* AH5416 (struct ath_hal*) ;
 int AR_PHY_CCA ;
 int AR_PHY_CH1_CCA ;
 int AR_PHY_CH1_EXT_CCA ;
 int AR_PHY_CH1_EXT_MINCCA_PWR ;
 int AR_PHY_CH1_MINCCA_PWR ;
 int AR_PHY_CH2_CCA ;
 int AR_PHY_CH2_EXT_CCA ;
 int AR_PHY_CH2_EXT_MINCCA_PWR ;
 int AR_PHY_CH2_MINCCA_PWR ;
 int AR_PHY_EXT_CCA ;
 int AR_PHY_EXT_MINCCA_PWR ;
 int AR_PHY_MINCCA_PWR ;
 int HALDEBUG (struct ath_hal*,int ,char*,int) ;
 int HAL_DEBUG_NFCAL ;
 int MS (int ,int ) ;
 int OS_REG_READ (struct ath_hal*,int ) ;

__attribute__((used)) static void
ar2133GetNoiseFloor(struct ath_hal *ah, int16_t nfarray[])
{
 struct ath_hal_5416 *ahp = AH5416(ah);
 int16_t nf;





 nfarray[0] = nfarray[1] = nfarray[2] = 0;
 nfarray[3] = nfarray[4] = nfarray[5] = 0;

 switch (ahp->ah_rx_chainmask) {
        case 0x7:
  nf = MS(OS_REG_READ(ah, AR_PHY_CH2_CCA), AR_PHY_CH2_MINCCA_PWR);
  if (nf & 0x100)
   nf = 0 - ((nf ^ 0x1ff) + 1);
  HALDEBUG(ah, HAL_DEBUG_NFCAL,
      "NF calibrated [ctl] [chain 2] is %d\n", nf);
  nfarray[2] = nf;

  nf = MS(OS_REG_READ(ah, AR_PHY_CH2_EXT_CCA), AR_PHY_CH2_EXT_MINCCA_PWR);
  if (nf & 0x100)
   nf = 0 - ((nf ^ 0x1ff) + 1);
  HALDEBUG(ah, HAL_DEBUG_NFCAL,
      "NF calibrated [ext] [chain 2] is %d\n", nf);
  nfarray[5] = nf;

        case 0x3:
        case 0x5:
  nf = MS(OS_REG_READ(ah, AR_PHY_CH1_CCA), AR_PHY_CH1_MINCCA_PWR);
  if (nf & 0x100)
   nf = 0 - ((nf ^ 0x1ff) + 1);
  HALDEBUG(ah, HAL_DEBUG_NFCAL,
      "NF calibrated [ctl] [chain 1] is %d\n", nf);
  nfarray[1] = nf;


  nf = MS(OS_REG_READ(ah, AR_PHY_CH1_EXT_CCA), AR_PHY_CH1_EXT_MINCCA_PWR);
  if (nf & 0x100)
   nf = 0 - ((nf ^ 0x1ff) + 1);
  HALDEBUG(ah, HAL_DEBUG_NFCAL,
      "NF calibrated [ext] [chain 1] is %d\n", nf);
  nfarray[4] = nf;

        case 0x1:
  nf = MS(OS_REG_READ(ah, AR_PHY_CCA), AR_PHY_MINCCA_PWR);
  if (nf & 0x100)
   nf = 0 - ((nf ^ 0x1ff) + 1);
  HALDEBUG(ah, HAL_DEBUG_NFCAL,
      "NF calibrated [ctl] [chain 0] is %d\n", nf);
  nfarray[0] = nf;

  nf = MS(OS_REG_READ(ah, AR_PHY_EXT_CCA), AR_PHY_EXT_MINCCA_PWR);
  if (nf & 0x100)
   nf = 0 - ((nf ^ 0x1ff) + 1);
  HALDEBUG(ah, HAL_DEBUG_NFCAL,
      "NF calibrated [ext] [chain 0] is %d\n", nf);
  nfarray[3] = nf;

  break;
 }
}
