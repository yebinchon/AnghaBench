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
struct printranges {scalar_t__ txstream; int htcapflags; int ratetype; scalar_t__ minmcs; scalar_t__ maxmcs; } ;
struct ieee80211com {scalar_t__ ic_txstream; int ic_htcaps; } ;
typedef  enum ieee80211_phymode { ____Placeholder_ieee80211_phymode } ieee80211_phymode ;

/* Variables and functions */
 int FUNC0 (struct ieee80211com*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*,char*,scalar_t__,int,...) ; 
 struct printranges* ranges ; 

__attribute__((used)) static void
FUNC2(struct ieee80211com *ic, enum ieee80211_phymode mode, int ratetype)
{
	int minrate, maxrate;
	struct printranges *range;

	for (range = ranges; range->txstream != 0; range++) {
		if (ic->ic_txstream < range->txstream)
			continue;
		if (range->htcapflags &&
		    (ic->ic_htcaps & range->htcapflags) == 0)
			continue;
		if (ratetype < range->ratetype)
			continue;
		minrate = FUNC0(ic, range->minmcs, mode, ratetype);
		maxrate = FUNC0(ic, range->maxmcs, mode, ratetype);
		if (range->maxmcs) {
			FUNC1(ic, "MCS %d-%d: %d%sMbps - %d%sMbps\n",
			    range->minmcs, range->maxmcs,
			    minrate/2, ((minrate & 0x1) != 0 ? ".5" : ""),
			    maxrate/2, ((maxrate & 0x1) != 0 ? ".5" : ""));
		} else {
			FUNC1(ic, "MCS %d: %d%sMbps\n", range->minmcs,
			    minrate/2, ((minrate & 0x1) != 0 ? ".5" : ""));
		}
	}
}