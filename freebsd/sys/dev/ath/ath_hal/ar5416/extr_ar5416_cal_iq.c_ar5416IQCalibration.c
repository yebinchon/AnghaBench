
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct ath_hal {int dummy; } ;
struct ar5416PerCal {int (* totalPowerMeasI ) (int) ;int (* totalPowerMeasQ ) (int) ;int (* totalIqCorrMeas ) (int) ;} ;
typedef int int32_t ;
struct TYPE_2__ {struct ar5416PerCal ah_cal; } ;


 TYPE_1__* AH5416 (struct ath_hal*) ;
 int AR_PHY_TIMING_CTRL4 ;
 int AR_PHY_TIMING_CTRL4_CHAIN (int) ;
 int AR_PHY_TIMING_CTRL4_IQCORR_ENABLE ;
 int AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF ;
 int AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF ;
 int HALDEBUG (struct ath_hal*,int ,char*,int,...) ;
 int HAL_DEBUG_PERCAL ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;
 int stub1 (int) ;
 int stub2 (int) ;
 int stub3 (int) ;

void
ar5416IQCalibration(struct ath_hal *ah, uint8_t numChains)
{
 struct ar5416PerCal *cal = &AH5416(ah)->ah_cal;
 int i;

 for (i = 0; i < numChains; i++) {
  uint32_t powerMeasI = cal->totalPowerMeasI(i);
  uint32_t powerMeasQ = cal->totalPowerMeasQ(i);
  uint32_t iqCorrMeas = cal->totalIqCorrMeas(i);
  uint32_t qCoffDenom, iCoffDenom;
  int iqCorrNeg;

  HALDEBUG(ah, HAL_DEBUG_PERCAL,
      "Start IQ Cal and Correction for Chain %d\n", i);
  HALDEBUG(ah, HAL_DEBUG_PERCAL,
      "Orignal: iq_corr_meas = 0x%08x\n", iqCorrMeas);

  iqCorrNeg = 0;

  if (iqCorrMeas > 0x80000000) {
   iqCorrMeas = (0xffffffff - iqCorrMeas) + 1;
   iqCorrNeg = 1;
  }

  HALDEBUG(ah, HAL_DEBUG_PERCAL, " pwr_meas_i = 0x%08x\n",
      powerMeasI);
  HALDEBUG(ah, HAL_DEBUG_PERCAL, " pwr_meas_q = 0x%08x\n",
      powerMeasQ);
  HALDEBUG(ah, HAL_DEBUG_PERCAL, " iqCorrNeg is 0x%08x\n",
      iqCorrNeg);

  iCoffDenom = (powerMeasI/2 + powerMeasQ/2)/ 128;
  qCoffDenom = powerMeasQ / 64;

  if (powerMeasQ != 0) {

   int32_t iCoff = iqCorrMeas/iCoffDenom;
   int32_t qCoff = powerMeasI/qCoffDenom - 64;

   HALDEBUG(ah, HAL_DEBUG_PERCAL, " iCoff = 0x%08x\n",
       iCoff);
   HALDEBUG(ah, HAL_DEBUG_PERCAL, " qCoff = 0x%08x\n",
       qCoff);


   iCoff = iCoff & 0x3f;
   HALDEBUG(ah, HAL_DEBUG_PERCAL,
       "New:  iCoff = 0x%08x\n", iCoff);

   if (iqCorrNeg == 0x0)
    iCoff = 0x40 - iCoff;
   if (qCoff > 15)
    qCoff = 15;
   else if (qCoff <= -16)
    qCoff = -16;
   HALDEBUG(ah, HAL_DEBUG_PERCAL,
       " : iCoff = 0x%x  qCoff = 0x%x\n", iCoff, qCoff);

   OS_REG_RMW_FIELD(ah, AR_PHY_TIMING_CTRL4_CHAIN(i),
       AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, iCoff);
   OS_REG_RMW_FIELD(ah, AR_PHY_TIMING_CTRL4_CHAIN(i),
       AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, qCoff);
   HALDEBUG(ah, HAL_DEBUG_PERCAL,
       "IQ Cal and Correction done for Chain %d\n", i);
  }
 }
 OS_REG_SET_BIT(ah, AR_PHY_TIMING_CTRL4,
     AR_PHY_TIMING_CTRL4_IQCORR_ENABLE);
}
