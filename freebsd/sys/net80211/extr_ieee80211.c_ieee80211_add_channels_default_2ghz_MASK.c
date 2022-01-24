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
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ieee80211_channel*,int,int*,int const*,int /*<<< orphan*/ ,int const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int const*) ; 

int
FUNC2(struct ieee80211_channel chans[],
    int maxchans, int *nchans, const uint8_t bands[], int ht40)
{
	const uint8_t default_chan_list[] =
	    { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14 };

	return (FUNC0(chans, maxchans, nchans,
	    default_chan_list, FUNC1(default_chan_list), bands, ht40));
}