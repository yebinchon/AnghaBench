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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct ath_hal_5210 {int ah_associd; scalar_t__ ah_bssid; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 struct ath_hal_5210* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_BSS_ID0 ; 
 int /*<<< orphan*/  AR_BSS_ID1 ; 
 int AR_BSS_ID1_AID_S ; 
 int /*<<< orphan*/  AR_STA_ID1 ; 
 int /*<<< orphan*/  AR_STA_ID1_NO_PSPOLL ; 
 int /*<<< orphan*/  IEEE80211_ADDR_LEN ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 

void
FUNC7(struct ath_hal *ah, const uint8_t *bssid, uint16_t assocId)
{
	struct ath_hal_5210 *ahp = FUNC0(ah);

	/* XXX save bssid for possible re-use on reset */
	FUNC3(ahp->ah_bssid, bssid, IEEE80211_ADDR_LEN);
	ahp->ah_associd = assocId;
	FUNC6(ah, AR_BSS_ID0, FUNC2(ahp->ah_bssid));
	FUNC6(ah, AR_BSS_ID1, FUNC1(ahp->ah_bssid+4) |
				     ((assocId & 0x3fff)<<AR_BSS_ID1_AID_S));
	if (assocId == 0)
		FUNC5(ah, AR_STA_ID1, AR_STA_ID1_NO_PSPOLL);
	else
		FUNC4(ah, AR_STA_ID1, AR_STA_ID1_NO_PSPOLL);
}