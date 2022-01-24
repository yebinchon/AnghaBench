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
struct ieee80211com {int ic_nchans; struct ieee80211_channel* ic_channels; } ;
struct ieee80211_channel {int ic_ieee; int ic_freq; int ic_maxregpower; int ic_minpower; int ic_maxpower; } ;

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
 scalar_t__ FUNC10 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC11 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC12 (struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

void
FUNC14(struct ieee80211com *ic)
{
	const struct ieee80211_channel *c;
	char type;
	int i, cw;

	FUNC13("Chan  Freq  CW  RegPwr  MinPwr  MaxPwr\n");
	for (i = 0; i < ic->ic_nchans; i++) {
		c = &ic->ic_channels[i];
		if (FUNC11(c))
			type = 'S';
		else if (FUNC0(c))
			type = 'T';
		else if (FUNC1(c))
			type = 'G';
		else if (FUNC6(c))
			type = 'n';
		else if (FUNC2(c))
			type = 'a';
		else if (FUNC3(c))
			type = 'g';
		else if (FUNC4(c))
			type = 'b';
		else
			type = 'f';
		if (FUNC7(c) || FUNC12(c))
			cw = 40;
		else if (FUNC5(c))
			cw = 10;
		else if (FUNC10(c))
			cw = 5;
		else
			cw = 20;
		FUNC13("%4d  %4d%c %2d%c %6d  %4d.%d  %4d.%d\n"
			, c->ic_ieee, c->ic_freq, type
			, cw
			, FUNC9(c) ? '+' :
			  FUNC8(c) ? '-' : ' '
			, c->ic_maxregpower
			, c->ic_minpower / 2, c->ic_minpower & 1 ? 5 : 0
			, c->ic_maxpower / 2, c->ic_maxpower & 1 ? 5 : 0
		);
	}
}