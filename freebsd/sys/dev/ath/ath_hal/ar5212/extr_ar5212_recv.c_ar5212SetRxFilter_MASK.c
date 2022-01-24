#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ath_hal_5212 {int ah_miscMode; } ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {scalar_t__ halBssidMatchSupport; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;

/* Variables and functions */
 struct ath_hal_5212* FUNC0 (struct ath_hal*) ; 
 TYPE_2__* FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_MISC_MODE ; 
 int AR_MISC_MODE_BSSID_MATCH_FORCE ; 
 int /*<<< orphan*/  AR_PHY_ERR ; 
 int AR_PHY_ERR_CCK_TIMING ; 
 int AR_PHY_ERR_OFDM_TIMING ; 
 int AR_PHY_ERR_RADAR ; 
 int /*<<< orphan*/  AR_RXCFG ; 
 int AR_RXCFG_ZLFDMA ; 
 int /*<<< orphan*/  AR_RX_FILTER ; 
 int HAL_RX_FILTER_BSSID ; 
 int HAL_RX_FILTER_PHYERR ; 
 int HAL_RX_FILTER_PHYRADAR ; 
 int FUNC2 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 

void
FUNC4(struct ath_hal *ah, uint32_t bits)
{
	struct ath_hal_5212 *ahp = FUNC0(ah);
	uint32_t phybits;

	FUNC3(ah, AR_RX_FILTER,
	    bits &~ (HAL_RX_FILTER_PHYRADAR|HAL_RX_FILTER_PHYERR|
	    HAL_RX_FILTER_BSSID));
	phybits = 0;
	if (bits & HAL_RX_FILTER_PHYRADAR)
		phybits |= AR_PHY_ERR_RADAR;
	if (bits & HAL_RX_FILTER_PHYERR)
		phybits |= AR_PHY_ERR_OFDM_TIMING | AR_PHY_ERR_CCK_TIMING;
	FUNC3(ah, AR_PHY_ERR, phybits);
	if (phybits) {
		FUNC3(ah, AR_RXCFG,
			FUNC2(ah, AR_RXCFG) | AR_RXCFG_ZLFDMA);
	} else {
		FUNC3(ah, AR_RXCFG,
			FUNC2(ah, AR_RXCFG) &~ AR_RXCFG_ZLFDMA);
	}
	if (FUNC1(ah)->ah_caps.halBssidMatchSupport) {
		if (bits & HAL_RX_FILTER_BSSID)
			ahp->ah_miscMode |= AR_MISC_MODE_BSSID_MATCH_FORCE;
		else
			ahp->ah_miscMode &= ~AR_MISC_MODE_BSSID_MATCH_FORCE;
		FUNC3(ah, AR_MISC_MODE, FUNC2(ah, AR_MISC_MODE) | ahp->ah_miscMode);
	}
}