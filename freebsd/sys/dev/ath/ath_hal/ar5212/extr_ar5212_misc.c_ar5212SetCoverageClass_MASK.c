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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int u_int ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_coverageClass; int /*<<< orphan*/  ah_curchan; } ;

/* Variables and functions */
 int ACK_CTS_TIMEOUT_11A ; 
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_D_GBL_IFS_EIFS ; 
 int /*<<< orphan*/  AR_D_GBL_IFS_SLOT ; 
 int /*<<< orphan*/  AR_TIME_OUT ; 
 int /*<<< orphan*/  AR_TIME_OUT_ACK ; 
 int /*<<< orphan*/  AR_TIME_OUT_CTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ IFS_EIFS_FULL_RATE ; 
 scalar_t__ IFS_EIFS_HALF_RATE ; 
 scalar_t__ IFS_EIFS_QUARTER_RATE ; 
 scalar_t__ IFS_SLOT_FULL_RATE ; 
 scalar_t__ IFS_SLOT_HALF_RATE ; 
 scalar_t__ IFS_SLOT_QUARTER_RATE ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ath_hal*,int) ; 

void
FUNC7(struct ath_hal *ah, uint8_t coverageclass, int now)
{
	uint32_t slot, timeout, eifs;
	u_int clkRate;

	FUNC0(ah)->ah_coverageClass = coverageclass;

	if (now) {
		if (FUNC0(ah)->ah_coverageClass == 0)
			return;

		/* Don't apply coverage class to non A channels */
		if (!FUNC1(FUNC0(ah)->ah_curchan))
			return;

		/* Get core clock rate */
		clkRate = FUNC6(ah, 1);

		/* Compute EIFS */
		slot = coverageclass * 3 * clkRate;
		eifs = coverageclass * 6 * clkRate;
		if (FUNC2(FUNC0(ah)->ah_curchan)) {
			slot += IFS_SLOT_HALF_RATE;
			eifs += IFS_EIFS_HALF_RATE;
		} else if (FUNC3(FUNC0(ah)->ah_curchan)) {
			slot += IFS_SLOT_QUARTER_RATE;
			eifs += IFS_EIFS_QUARTER_RATE;
		} else { /* full rate */
			slot += IFS_SLOT_FULL_RATE;
			eifs += IFS_EIFS_FULL_RATE;
		}

		/*
		 * Add additional time for air propagation for ACK and CTS
		 * timeouts. This value is in core clocks.
  		 */
		timeout = ACK_CTS_TIMEOUT_11A + (coverageclass * 3 * clkRate);
	
		/*
		 * Write the values: slot, eifs, ack/cts timeouts.
		 */
		FUNC4(ah, AR_D_GBL_IFS_SLOT, slot);
		FUNC4(ah, AR_D_GBL_IFS_EIFS, eifs);
		FUNC4(ah, AR_TIME_OUT,
			  FUNC5(timeout, AR_TIME_OUT_CTS)
			| FUNC5(timeout, AR_TIME_OUT_ACK));
	}
}