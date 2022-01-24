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
struct ieee80211_channel {int /*<<< orphan*/  ic_freq; int /*<<< orphan*/  ic_flags; } ;
struct ath_hal {int dummy; } ;
typedef  int int16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC1 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC3 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC4 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC5 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC6 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC7 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC8 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC9 (struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ dopassive ; 
 scalar_t__ is4ms ; 
 scalar_t__ isdfs ; 
 int /*<<< orphan*/  n ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 char* sep ; 
 scalar_t__ showchannels ; 
 int FUNC12 (int) ; 

__attribute__((used)) static void
FUNC13(struct ath_hal *ah, int nc,
	const struct ieee80211_channel *chans, int16_t *txpow)
{
	int i;

	for (i = 0; i < nc; i++) {
		const struct ieee80211_channel *c = &chans[i];
		int type;

		if (showchannels)
			FUNC11("%s%3d", sep,
			    FUNC10(ah, c->ic_freq, c->ic_flags));
		else
			FUNC11("%s%u", sep, c->ic_freq);
		if (FUNC5(c))
			type = 'H';
		else if (FUNC8(c))
			type = 'Q';
		else if (FUNC9(c))
			type = 'T';
		else if (FUNC6(c))
			type = 'N';
		else if (FUNC2(c))
			type = 'A';
		else if (FUNC0(c))
			type = 'T';
		else if (FUNC4(c))
			type = 'G';
		else
			type = 'B';
		if (dopassive && FUNC7(c))
			type = FUNC12(type);
		if (isdfs && is4ms)
			FUNC11("%c%c%c %d.%d", type,
			    FUNC3(c) ? '*' : ' ',
			    FUNC1(c) ? '4' : ' ',
			    txpow[i]/2, (txpow[i]%2)*5);
		else if (isdfs)
			FUNC11("%c%c %d.%d", type,
			    FUNC3(c) ? '*' : ' ',
			    txpow[i]/2, (txpow[i]%2)*5);
		else if (is4ms)
			FUNC11("%c%c %d.%d", type,
			    FUNC1(c) ? '4' : ' ',
			    txpow[i]/2, (txpow[i]%2)*5);
		else
			FUNC11("%c %d.%d", type, txpow[i]/2, (txpow[i]%2)*5);
		if ((n++ % (showchannels ? 7 : 6)) == 0)
			sep = "\n";
		else
			sep = " ";
	}
}