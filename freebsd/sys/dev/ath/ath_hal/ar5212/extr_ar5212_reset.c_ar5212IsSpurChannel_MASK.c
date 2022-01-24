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
typedef  int uint16_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
typedef  int HAL_BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ath_hal*) ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 int FUNC3 (struct ath_hal*,struct ieee80211_channel const*) ; 

HAL_BOOL
FUNC4(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
	uint16_t freq = FUNC3(ah, chan);
	uint32_t clockFreq =
	    ((FUNC1(ah) || FUNC2(ah) || FUNC0(ah)) ? 40 : 32);
	return ( ((freq % clockFreq) != 0)
              && (((freq % clockFreq) < 10)
             || (((freq) % clockFreq) > 22)) );
}