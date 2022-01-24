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
struct TYPE_2__ {int ah_rx_chainmask; int ah_tx_chainmask; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_PHY_ANALOG_SWAP ; 
 int /*<<< orphan*/  AR_PHY_CAL_CHAINMASK ; 
 int /*<<< orphan*/  AR_PHY_RX_CHAINMASK ; 
 int /*<<< orphan*/  AR_PHY_SWAP_ALT_CHAIN ; 
 int /*<<< orphan*/  AR_SELFGEN_MASK ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 int FUNC3 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 

void
FUNC6(struct ath_hal *ah)
{
	int rx_chainmask = FUNC0(ah)->ah_rx_chainmask;

	/* Flip this for this chainmask regardless of chip */
	if (rx_chainmask == 0x5)
		FUNC4(ah, AR_PHY_ANALOG_SWAP, AR_PHY_SWAP_ALT_CHAIN);

	/*
	 * Workaround for OWL 1.0 calibration failure; enable multi-chain;
	 * then set true mask after calibration.
	 */
	if (FUNC2(ah) && (rx_chainmask == 0x5 || rx_chainmask == 0x3)) {
		FUNC5(ah, AR_PHY_RX_CHAINMASK, 0x7);
		FUNC5(ah, AR_PHY_CAL_CHAINMASK, 0x7);
	} else {
		FUNC5(ah, AR_PHY_RX_CHAINMASK, FUNC0(ah)->ah_rx_chainmask);
		FUNC5(ah, AR_PHY_CAL_CHAINMASK, FUNC0(ah)->ah_rx_chainmask);
	}
	FUNC5(ah, AR_SELFGEN_MASK, FUNC0(ah)->ah_tx_chainmask);

	if (FUNC0(ah)->ah_tx_chainmask == 0x5)
		FUNC4(ah, AR_PHY_ANALOG_SWAP, AR_PHY_SWAP_ALT_CHAIN);

	if (FUNC1(ah)) {
		FUNC5(ah, AR_PHY_ANALOG_SWAP,
		FUNC3(ah, AR_PHY_ANALOG_SWAP) | 0x00000001);
	}
}