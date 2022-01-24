#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ath_hal_5212 {int /*<<< orphan*/  ah_mibStats; scalar_t__ ah_hasHwPhyCounters; } ;
struct ath_hal {int dummy; } ;
struct ar5212AniState {scalar_t__ cckPhyErrCount; scalar_t__ ofdmPhyErrCount; struct ar5212AniParams* params; scalar_t__ listenTime; } ;
struct ar5212AniParams {int /*<<< orphan*/  cckPhyErrBase; int /*<<< orphan*/  ofdmPhyErrBase; } ;

/* Variables and functions */
 struct ath_hal_5212* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_PHYCNT1 ; 
 int /*<<< orphan*/  AR_PHYCNT2 ; 
 int /*<<< orphan*/  AR_PHYCNTMASK1 ; 
 int /*<<< orphan*/  AR_PHYCNTMASK2 ; 
 int /*<<< orphan*/  AR_PHY_ERR_CCK_TIMING ; 
 int /*<<< orphan*/  AR_PHY_ERR_OFDM_TIMING ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct ath_hal *ah, struct ar5212AniState *aniState)
{
	struct ath_hal_5212 *ahp = FUNC0(ah);

	aniState->listenTime = 0;
	if (ahp->ah_hasHwPhyCounters) {
		const struct ar5212AniParams *params = aniState->params;
		/*
		 * NB: these are written on reset based on the
		 *     ini so we must re-write them!
		 */
		FUNC1(ah, AR_PHYCNT1, params->ofdmPhyErrBase);
		FUNC1(ah, AR_PHYCNT2, params->cckPhyErrBase);
		FUNC1(ah, AR_PHYCNTMASK1, AR_PHY_ERR_OFDM_TIMING);
		FUNC1(ah, AR_PHYCNTMASK2, AR_PHY_ERR_CCK_TIMING);

		/* Clear the mib counters and save them in the stats */
		FUNC2(ah, &ahp->ah_mibStats);
	}
	aniState->ofdmPhyErrCount = 0;
	aniState->cckPhyErrCount = 0;
}