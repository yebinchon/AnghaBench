
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
struct ar5212AniParams {int maxNoiseImmunityLevel; int maxSpurImmunityLevel; int maxFirstepLevel; int ofdmTrigHigh; int ofdmTrigLow; int cckTrigHigh; int cckTrigLow; int rssiThrHigh; int rssiThrLow; int period; int firstep; int cycPwrThr1; int firpwr; int coarseLow; int coarseHigh; int totalSizeDesired; } ;


 int AH_TRUE ;
 int ar5212AniAttach (struct ath_hal*,struct ar5212AniParams const*,struct ar5212AniParams const*,int ) ;

__attribute__((used)) static void
ar5312AniSetup(struct ath_hal *ah)
{
 static const struct ar5212AniParams aniparams = {
  .maxNoiseImmunityLevel = 4,
  .totalSizeDesired = { -41, -41, -48, -48, -48 },
  .coarseHigh = { -18, -18, -16, -14, -12 },
  .coarseLow = { -56, -56, -60, -60, -60 },
  .firpwr = { -72, -72, -75, -78, -80 },
  .maxSpurImmunityLevel = 2,
  .cycPwrThr1 = { 2, 4, 6 },
  .maxFirstepLevel = 2,
  .firstep = { 0, 4, 8 },
  .ofdmTrigHigh = 500,
  .ofdmTrigLow = 200,
  .cckTrigHigh = 200,
  .cckTrigLow = 100,
  .rssiThrHigh = 40,
  .rssiThrLow = 7,
  .period = 100,
 };
 ar5212AniAttach(ah, &aniparams, &aniparams, AH_TRUE);
}
