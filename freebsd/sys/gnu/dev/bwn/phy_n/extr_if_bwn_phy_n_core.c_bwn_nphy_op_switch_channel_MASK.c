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
struct bwn_mac {int dummy; } ;
typedef  int /*<<< orphan*/  bwn_chan_type_t ;

/* Variables and functions */
 scalar_t__ BWN_BAND_2G ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ *) ; 
 struct ieee80211_channel* FUNC2 (struct bwn_mac*) ; 
 int FUNC3 (struct bwn_mac*,struct ieee80211_channel*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct bwn_mac *mac, unsigned int new_channel)
{
	struct ieee80211_channel *channel = FUNC2(mac);
	bwn_chan_type_t channel_type = FUNC1(mac, NULL);

	if (FUNC0(mac) == BWN_BAND_2G) {
		if ((new_channel < 1) || (new_channel > 14))
			return -EINVAL;
	} else {
		if (new_channel > 200)
			return -EINVAL;
	}

	return FUNC3(mac, channel, channel_type);
}