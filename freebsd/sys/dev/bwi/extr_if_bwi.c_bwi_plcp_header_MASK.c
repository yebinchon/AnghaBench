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
struct ieee80211_rate_table {int dummy; } ;
typedef  enum ieee80211_phytype { ____Placeholder_ieee80211_phytype } ieee80211_phytype ;

/* Variables and functions */
 int IEEE80211_T_DS ; 
 int IEEE80211_T_OFDM ; 
 int /*<<< orphan*/  FUNC0 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ieee80211_rate_table const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static __inline void
FUNC4(const struct ieee80211_rate_table *rt,
	void *plcp, int pkt_len, uint8_t rate)
{
	enum ieee80211_phytype modtype;

	/*
	 * Assume caller has zeroed 'plcp'
	 */
	modtype = FUNC2(rt, rate);
	if (modtype == IEEE80211_T_OFDM)
		FUNC1(plcp, pkt_len, rate);
	else if (modtype == IEEE80211_T_DS)
		FUNC0(plcp, pkt_len, rate);
	else
		FUNC3("unsupport modulation type %u\n", modtype);
}