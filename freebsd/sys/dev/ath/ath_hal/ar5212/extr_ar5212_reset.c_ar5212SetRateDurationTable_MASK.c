#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_6__ {int rateCount; TYPE_1__* info; } ;
struct TYPE_5__ {scalar_t__ phy; int shortPreamble; int /*<<< orphan*/  controlRate; int /*<<< orphan*/  rateCode; } ;
typedef  TYPE_2__ HAL_RATE_TABLE ;

/* Variables and functions */
 int /*<<< orphan*/  AH_FALSE ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HAL_MODE_11A_HALF_RATE ; 
 int /*<<< orphan*/  HAL_MODE_11A_QUARTER_RATE ; 
 int /*<<< orphan*/  HAL_MODE_11G ; 
 int /*<<< orphan*/  HAL_MODE_TURBO ; 
 scalar_t__ FUNC1 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC3 (struct ieee80211_channel const*) ; 
 scalar_t__ IEEE80211_T_CCK ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WLAN_CTRL_FRAME_SIZE ; 
 TYPE_2__* FUNC5 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,TYPE_2__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(struct ath_hal *ah,
	const struct ieee80211_channel *chan)
{
	const HAL_RATE_TABLE *rt;
	int i;

	/* NB: band doesn't matter for 1/2 and 1/4 rate */
	if (FUNC1(chan)) {
		rt = FUNC5(ah, HAL_MODE_11A_HALF_RATE);
	} else if (FUNC2(chan)) {
		rt = FUNC5(ah, HAL_MODE_11A_QUARTER_RATE);
	} else {
		rt = FUNC5(ah,
			FUNC3(chan) ? HAL_MODE_TURBO : HAL_MODE_11G);
	}

	for (i = 0; i < rt->rateCount; ++i)
		FUNC4(ah,
			FUNC0(rt->info[i].rateCode),
			FUNC6(ah, rt,
				WLAN_CTRL_FRAME_SIZE,
				rt->info[i].controlRate, AH_FALSE, AH_TRUE));
	if (!FUNC3(chan)) {
		/* 11g Table is used to cover the CCK rates. */
		rt = FUNC5(ah, HAL_MODE_11G);
		for (i = 0; i < rt->rateCount; ++i) {
			uint32_t reg = FUNC0(rt->info[i].rateCode);

			if (rt->info[i].phy != IEEE80211_T_CCK)
				continue;

			FUNC4(ah, reg,
				FUNC6(ah, rt,
					WLAN_CTRL_FRAME_SIZE,
					rt->info[i].controlRate, AH_FALSE,
					AH_TRUE));
			/* cck rates have short preamble option also */
			if (rt->info[i].shortPreamble) {
				reg += rt->info[i].shortPreamble << 2;
				FUNC4(ah, reg,
					FUNC6(ah, rt,
						WLAN_CTRL_FRAME_SIZE,
						rt->info[i].controlRate,
						AH_TRUE, AH_TRUE));
			}
		}
	}
}