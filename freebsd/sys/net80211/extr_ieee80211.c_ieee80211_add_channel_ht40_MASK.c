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
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct ieee80211_channel {int /*<<< orphan*/  ic_freq; int /*<<< orphan*/  ic_ieee; } ;
typedef  int /*<<< orphan*/  int8_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int IEEE80211_CHAN_HT ; 
 int IEEE80211_CHAN_HT20 ; 
 int IEEE80211_CHAN_HT40D ; 
 int IEEE80211_CHAN_HT40U ; 
 int FUNC0 (struct ieee80211_channel*,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ieee80211_channel* FUNC1 (struct ieee80211_channel*,int,scalar_t__,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 

int
FUNC3(struct ieee80211_channel chans[], int maxchans,
    int *nchans, uint8_t ieee, int8_t maxregpower, uint32_t flags)
{
	struct ieee80211_channel *cent, *extc;
	uint16_t freq;
	int error;

	freq = FUNC2(ieee, flags);

	/*
	 * Each entry defines an HT40 channel pair; find the
	 * center channel, then the extension channel above.
	 */
	flags |= IEEE80211_CHAN_HT20;
	cent = FUNC1(chans, *nchans, freq, flags);
	if (cent == NULL)
		return (EINVAL);

	extc = FUNC1(chans, *nchans, freq + 20, flags);
	if (extc == NULL)
		return (ENOENT);

	flags &= ~IEEE80211_CHAN_HT;
	error = FUNC0(chans, maxchans, nchans, cent->ic_ieee, cent->ic_freq,
	    maxregpower, flags | IEEE80211_CHAN_HT40U);
	if (error != 0)
		return (error);

	error = FUNC0(chans, maxchans, nchans, extc->ic_ieee, extc->ic_freq,
	    maxregpower, flags | IEEE80211_CHAN_HT40D);

	return (error);
}