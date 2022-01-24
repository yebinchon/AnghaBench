#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
struct ieee80211_rate_table {TYPE_1__* info; } ;
struct TYPE_2__ {scalar_t__ phy; int dot11Rate; int /*<<< orphan*/  shortPreamble; } ;

/* Variables and functions */
 int IEEE80211_RATE_BASIC ; 
 scalar_t__ IEEE80211_T_CCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static int
FUNC2(const struct ieee80211_rate_table *rt, uint8_t rix,
	int isShortPreamble, int verbose)
{
	if (isShortPreamble) {
		if (rt->info[rix].phy != IEEE80211_T_CCK) {
			if (verbose)
				FUNC1("short preamble not meaningful, ignored");
			isShortPreamble = 0;
		} else if (!rt->info[rix].shortPreamble) {
			if (verbose)
				FUNC1("short preamble not meaningful with "
				    "rate %s, ignored",
				    FUNC0(rt->info[rix].dot11Rate &~ IEEE80211_RATE_BASIC));
			isShortPreamble = 0;
		}
	}
	return isShortPreamble;
}