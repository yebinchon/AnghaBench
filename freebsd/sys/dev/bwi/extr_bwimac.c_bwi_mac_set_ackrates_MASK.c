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
typedef  int uint16_t ;
struct ieee80211_rateset {int rs_nrates; int* rs_rates; } ;
struct ieee80211_rate_table {int dummy; } ;
struct bwi_mac {int dummy; } ;
typedef  enum ieee80211_phytype { ____Placeholder_ieee80211_phytype } ieee80211_phytype ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_COMM_MOBJ ; 
 int IEEE80211_RATE_VAL ; 
#define  IEEE80211_T_DS 129 
#define  IEEE80211_T_OFDM 128 
 int /*<<< orphan*/  FUNC0 (struct bwi_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_mac*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ieee80211_rate_table const*,int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static void
FUNC5(struct bwi_mac *mac, const struct ieee80211_rate_table *rt,
	const struct ieee80211_rateset *rs)
{
	int i;

	/* XXX not standard conforming */
	for (i = 0; i < rs->rs_nrates; ++i) {
		enum ieee80211_phytype modtype;
		uint16_t ofs;

		modtype = FUNC2(rt,
		    rs->rs_rates[i] & IEEE80211_RATE_VAL);
		switch (modtype) {
		case IEEE80211_T_DS:
			ofs = 0x4c0;
			break;
		case IEEE80211_T_OFDM:
			ofs = 0x480;
			break;
		default:
			FUNC4("unsupported modtype %u\n", modtype);
		}
		ofs += 2*(FUNC3(
		    rs->rs_rates[i] & IEEE80211_RATE_VAL,
		    modtype) & 0xf);

		FUNC1(mac, BWI_COMM_MOBJ, ofs + 0x20,
			     FUNC0(mac, BWI_COMM_MOBJ, ofs));
	}
}