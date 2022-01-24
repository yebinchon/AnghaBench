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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int HAL_MODE_11A ; 
 int HAL_MODE_11B ; 
 int HAL_MODE_11G ; 
 int HAL_MODE_11NA_HT20 ; 
 int HAL_MODE_11NA_HT40MINUS ; 
 int HAL_MODE_11NA_HT40PLUS ; 
 int HAL_MODE_11NG_HT20 ; 
 int HAL_MODE_11NG_HT40MINUS ; 
 int HAL_MODE_11NG_HT40PLUS ; 
 int HAL_MODE_TURBO ; 
 scalar_t__ FUNC1 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC3 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC4 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC5 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC6 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC7 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC8 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC9 (struct ieee80211_channel const*) ; 

int
FUNC10(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
	/*
	 * Pick a default mode at bootup. A channel change is inevitable.
	 */
	if (!chan)
		return HAL_MODE_11NG_HT20;

	if (FUNC9(chan))
		return HAL_MODE_TURBO;

	/* check for NA_HT before plain A, since IS_CHAN_A includes NA_HT */
	if (FUNC2(chan) && FUNC6(chan))
		return HAL_MODE_11NA_HT20;
	if (FUNC2(chan) && FUNC8(chan))
		return HAL_MODE_11NA_HT40PLUS;
	if (FUNC2(chan) && FUNC7(chan))
		return HAL_MODE_11NA_HT40MINUS;
	if (FUNC3(chan))
		return HAL_MODE_11A;

	/* check for NG_HT before plain G, since IS_CHAN_G includes NG_HT */
	if (FUNC1(chan) && FUNC6(chan))
		return HAL_MODE_11NG_HT20;
	if (FUNC1(chan) && FUNC8(chan))
		return HAL_MODE_11NG_HT40PLUS;
	if (FUNC1(chan) && FUNC7(chan))
		return HAL_MODE_11NG_HT40MINUS;

	/*
	 * XXX For FreeBSD, will this work correctly given the DYN
	 * chan mode (OFDM+CCK dynamic) ? We have pure-G versions DYN-BG..
	 */
	if (FUNC5(chan))
		return HAL_MODE_11G;
	if (FUNC4(chan))
		return HAL_MODE_11B;

	FUNC0(0);
	return HAL_MODE_11NG_HT20;
}