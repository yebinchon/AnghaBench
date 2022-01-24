#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ath_hal {int dummy; } ;
struct ar5212AniParams {int maxNoiseImmunityLevel; int maxSpurImmunityLevel; int maxFirstepLevel; int ofdmTrigHigh; int ofdmTrigLow; int cckTrigHigh; int cckTrigLow; int rssiThrHigh; int rssiThrLow; int period; int /*<<< orphan*/  firstep; int /*<<< orphan*/  cycPwrThr1; int /*<<< orphan*/  firpwr; int /*<<< orphan*/  coarseLow; int /*<<< orphan*/  coarseHigh; int /*<<< orphan*/  totalSizeDesired; } ;
struct TYPE_2__ {int ah_ani_function; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int HAL_ANI_NOISE_IMMUNITY_LEVEL ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,struct ar5212AniParams const*,struct ar5212AniParams const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct ath_hal *ah)
{
	static const struct ar5212AniParams aniparams = {
		.maxNoiseImmunityLevel	= 4,	/* levels 0..4 */
		.totalSizeDesired	= { -55, -55, -55, -55, -62 },
		.coarseHigh		= { -14, -14, -14, -14, -12 },
		.coarseLow		= { -64, -64, -64, -64, -70 },
		.firpwr			= { -78, -78, -78, -78, -80 },
		.maxSpurImmunityLevel	= 7,
		.cycPwrThr1		= { 2, 4, 6, 8, 10, 12, 14, 16 },
		.maxFirstepLevel	= 2,	/* levels 0..2 */
		.firstep		= { 0, 4, 8 },
		.ofdmTrigHigh		= 500,
		.ofdmTrigLow		= 200,
		.cckTrigHigh		= 200,
		.cckTrigLow		= 100,
		.rssiThrHigh		= 40,
		.rssiThrLow		= 7,
		.period			= 100,
	};
	/* NB: disable ANI noise immmunity for reliable RIFS rx */
	FUNC0(ah)->ah_ani_function &= ~(1 << HAL_ANI_NOISE_IMMUNITY_LEVEL);
	FUNC1(ah, &aniparams, &aniparams, AH_TRUE);
}