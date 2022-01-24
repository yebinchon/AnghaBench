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
struct ieee80211com {int /*<<< orphan*/  ic_modecaps; int /*<<< orphan*/  ic_rxstream; int /*<<< orphan*/  ic_txstream; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_MODE_11NA ; 
 int /*<<< orphan*/  IEEE80211_MODE_11NG ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct ieee80211com *ic)
{

	if (FUNC2(ic->ic_modecaps, IEEE80211_MODE_11NA) ||
	    FUNC2(ic->ic_modecaps, IEEE80211_MODE_11NG))
		FUNC1(ic, "%dT%dR\n", ic->ic_txstream, ic->ic_rxstream);
	if (FUNC2(ic->ic_modecaps, IEEE80211_MODE_11NA))
		FUNC0(ic, IEEE80211_MODE_11NA);
	if (FUNC2(ic->ic_modecaps, IEEE80211_MODE_11NG))
		FUNC0(ic, IEEE80211_MODE_11NG);
}