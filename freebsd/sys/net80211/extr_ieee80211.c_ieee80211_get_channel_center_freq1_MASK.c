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
typedef  scalar_t__ uint32_t ;
struct ieee80211_channel {scalar_t__ ic_freq; int /*<<< orphan*/  ic_flags; int /*<<< orphan*/  ic_vht_ch_freq1; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC1 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint32_t
FUNC4(const struct ieee80211_channel *c)
{

	/*
	 * VHT - use the pre-calculated centre frequency
	 * of the given channel.
	 */
	if (FUNC2(c))
		return (FUNC3(c->ic_vht_ch_freq1, c->ic_flags));

	if (FUNC1(c)) {
		return (c->ic_freq + 10);
	}
	if (FUNC0(c)) {
		return (c->ic_freq - 10);
	}

	return (c->ic_freq);
}