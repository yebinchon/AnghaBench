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
typedef  int uint32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AH_FALSE ; 
 int AR_DIAG_RX_ABORT ; 
 int AR_DIAG_RX_DIS ; 
 int /*<<< orphan*/  AR_DIAG_SW ; 
 int AR_PCU_MISC_MODE2 ; 
 int AR_PCU_MISC_MODE2_ADHOC_MCAST_KEYID_ENABLE ; 
 int AR_PCU_MISC_MODE2_HWWAR1 ; 
 int AR_PCU_MISC_MODE2_HWWAR2 ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 scalar_t__ FUNC3 (struct ath_hal*) ; 
 scalar_t__ FUNC4 (struct ath_hal*) ; 
 scalar_t__ FUNC5 (struct ath_hal*) ; 
 scalar_t__ FUNC6 (struct ath_hal*) ; 
 int FUNC7 (struct ath_hal*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hal*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hal*,struct ieee80211_channel const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
	uint32_t val;

	/*
	 * Set the RX_ABORT and RX_DIS and clear if off only after
	 * RXE is set for MAC. This prevents frames with corrupted
	 * descriptor status.
	 */
	FUNC8(ah, AR_DIAG_SW, (AR_DIAG_RX_DIS | AR_DIAG_RX_ABORT));

	if (FUNC5(ah)) {
		val = FUNC7(ah, AR_PCU_MISC_MODE2);
		val &= (~AR_PCU_MISC_MODE2_ADHOC_MCAST_KEYID_ENABLE);
		if (!FUNC1(ah))
			val &= ~AR_PCU_MISC_MODE2_HWWAR1;

		if (FUNC3(ah))
			val = val & (~AR_PCU_MISC_MODE2_HWWAR2);

		FUNC9(ah, AR_PCU_MISC_MODE2, val);
	}

	/*
	 * Disable RIFS search on some chips to avoid baseband
	 * hang issues.
	 */
	if (FUNC2(ah) || FUNC6(ah))
		(void) FUNC10(ah, chan, AH_FALSE);

        if (!FUNC0(ah) || FUNC4(ah))
		return;

	/*
	 * Disable BB clock gating
	 * Necessary to avoid issues on AR5416 2.0
	 */
	FUNC9(ah, 0x9800 + (651 << 2), 0x11);
}