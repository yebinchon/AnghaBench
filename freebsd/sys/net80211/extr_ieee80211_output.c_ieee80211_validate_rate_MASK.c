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
typedef  int uint8_t ;
struct ieee80211com {int ic_htcaps; int ic_txstream; int /*<<< orphan*/  ic_rt; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;

/* Variables and functions */
 int EINVAL ; 
 int IEEE80211_HTC_HT ; 
 int IEEE80211_HTC_TXMCS32 ; 
 int IEEE80211_HTC_TXUNEQUAL ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct ieee80211_node *ni, uint8_t rate)
{
	struct ieee80211com *ic = ni->ni_ic;

	if (FUNC0(rate)) {
		if ((ic->ic_htcaps & IEEE80211_HTC_HT) == 0)
			return (EINVAL);

		rate = FUNC1(rate);
		if (rate <= 31) {
			if (rate > ic->ic_txstream * 8 - 1)
				return (EINVAL);

			return (0);
		}

		if (rate == 32) {
			if ((ic->ic_htcaps & IEEE80211_HTC_TXMCS32) == 0)
				return (EINVAL);

			return (0);
		}

		if ((ic->ic_htcaps & IEEE80211_HTC_TXUNEQUAL) == 0)
			return (EINVAL);

		switch (ic->ic_txstream) {
		case 0:
		case 1:
			return (EINVAL);
		case 2:
			if (rate > 38)
				return (EINVAL);

			return (0);
		case 3:
			if (rate > 52)
				return (EINVAL);

			return (0);
		case 4:
		default:
			if (rate > 76)
				return (EINVAL);

			return (0);
		}
	}

	if (!FUNC2(ic->ic_rt, rate))
		return (EINVAL);

	return (0);
}