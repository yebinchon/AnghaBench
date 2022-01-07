
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct ar5212AniParams {int maxNoiseImmunityLevel; int maxSpurImmunityLevel; int maxFirstepLevel; int ofdmTrigHigh; int ofdmTrigLow; int cckTrigHigh; int cckTrigLow; int rssiThrHigh; int rssiThrLow; int period; int firstep; int cycPwrThr1; int firpwr; int coarseLow; int coarseHigh; int totalSizeDesired; } ;
struct TYPE_2__ {int ah_ani_function; } ;


 TYPE_1__* AH5416 (struct ath_hal*) ;
 int AH_TRUE ;
 int HAL_ANI_NOISE_IMMUNITY_LEVEL ;
 int ar5416AniAttach (struct ath_hal*,struct ar5212AniParams const*,struct ar5212AniParams const*,int ) ;

__attribute__((used)) static void
ar9280AniSetup(struct ath_hal *ah)
{





        static const struct ar5212AniParams aniparams = {
                .maxNoiseImmunityLevel = 4,
                .totalSizeDesired = { -55, -55, -55, -55, -62 },
                .coarseHigh = { -14, -14, -14, -14, -12 },
                .coarseLow = { -64, -64, -64, -64, -70 },
                .firpwr = { -78, -78, -78, -78, -80 },
                .maxSpurImmunityLevel = 7,
                .cycPwrThr1 = { 2, 4, 6, 8, 10, 12, 14, 16 },
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

 AH5416(ah)->ah_ani_function &= ~(1 << HAL_ANI_NOISE_IMMUNITY_LEVEL);


        ar5416AniAttach(ah, &aniparams, &aniparams, AH_TRUE);
}
