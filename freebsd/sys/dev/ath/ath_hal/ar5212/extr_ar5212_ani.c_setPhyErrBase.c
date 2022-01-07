
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
struct ar5212AniParams {scalar_t__ ofdmTrigHigh; scalar_t__ cckTrigHigh; scalar_t__ cckPhyErrBase; scalar_t__ ofdmPhyErrBase; } ;


 scalar_t__ AR_PHY_COUNTMAX ;
 int HALDEBUG (struct ath_hal*,int ,char*,scalar_t__) ;
 int HAL_DEBUG_ANY ;

__attribute__((used)) static void
setPhyErrBase(struct ath_hal *ah, struct ar5212AniParams *params)
{
 if (params->ofdmTrigHigh >= AR_PHY_COUNTMAX) {
  HALDEBUG(ah, HAL_DEBUG_ANY,
      "OFDM Trigger %d is too high for hw counters, using max\n",
      params->ofdmTrigHigh);
  params->ofdmPhyErrBase = 0;
 } else
  params->ofdmPhyErrBase = AR_PHY_COUNTMAX - params->ofdmTrigHigh;
 if (params->cckTrigHigh >= AR_PHY_COUNTMAX) {
  HALDEBUG(ah, HAL_DEBUG_ANY,
      "CCK Trigger %d is too high for hw counters, using max\n",
      params->cckTrigHigh);
  params->cckPhyErrBase = 0;
 } else
  params->cckPhyErrBase = AR_PHY_COUNTMAX - params->cckTrigHigh;
}
