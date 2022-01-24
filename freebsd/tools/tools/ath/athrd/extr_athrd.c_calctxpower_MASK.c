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
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,struct ieee80211_channel const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct ath_hal *ah,
	int nchan, const struct ieee80211_channel *chans,
	int16_t tpcScaleReduction, int16_t powerLimit, int16_t *txpow)
{
	int16_t minpow;
	int i;

	for (i = 0; i < nchan; i++)
		if (!FUNC2(ah, &chans[i],
		    tpcScaleReduction, powerLimit, &minpow, &txpow[i])) {
			FUNC1("unable to set rate table\n");
			FUNC0(-1);
		}
}