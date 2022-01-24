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
typedef  int uint16_t ;
struct bwi_softc {int dummy; } ;
struct bwi_phy {scalar_t__ phy_mode; int phy_rev; } ;
struct TYPE_2__ {int rf_ant_mode; } ;
struct bwi_mac {int mac_rev; TYPE_1__ mac_rf; struct bwi_phy mac_phy; struct bwi_softc* mac_sc; } ;

/* Variables and functions */
 int BWI_ANT_MODE_0 ; 
 int BWI_ANT_MODE_1 ; 
 int BWI_ANT_MODE_AUTO ; 
 int /*<<< orphan*/  BWI_COMM_MOBJ ; 
 int /*<<< orphan*/  BWI_COMM_MOBJ_TX_ACK ; 
 int /*<<< orphan*/  BWI_COMM_MOBJ_TX_BEACON ; 
 int /*<<< orphan*/  BWI_COMM_MOBJ_TX_PROBE_RESP ; 
 int /*<<< orphan*/  BWI_HFLAG_AUTO_ANTDIV ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_mac*,int /*<<< orphan*/ ) ; 
 scalar_t__ IEEE80211_MODE_11A ; 
 scalar_t__ IEEE80211_MODE_11B ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct bwi_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bwi_mac*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bwi_mac*,int,int) ; 

void
FUNC10(struct bwi_mac *mac, int ant_mode)
{
	struct bwi_softc *sc = mac->mac_sc;
	struct bwi_phy *phy = &mac->mac_phy;
	uint16_t val;

	FUNC4(ant_mode == BWI_ANT_MODE_0 ||
		ant_mode == BWI_ANT_MODE_1 ||
		ant_mode == BWI_ANT_MODE_AUTO, ("ant_mode %d", ant_mode));

	FUNC2(mac, BWI_HFLAG_AUTO_ANTDIV);

	if (phy->phy_mode == IEEE80211_MODE_11B) {
		/* NOTE: v4/v3 conflicts, take v3 */
		if (mac->mac_rev == 2)
			val = BWI_ANT_MODE_AUTO;
		else
			val = ant_mode;
		val <<= 7;
		FUNC7(mac, 0x3e2, 0xfe7f, val);
	} else {	/* 11a/g */
		/* XXX reg/value naming */
		val = ant_mode << 7;
		FUNC7(mac, 0x401, 0x7e7f, val);

		if (ant_mode == BWI_ANT_MODE_AUTO)
			FUNC6(mac, 0x42b, 0x100);

		if (phy->phy_mode == IEEE80211_MODE_11A) {
			/* TODO:11A */
		} else {	/* 11g */
			if (ant_mode == BWI_ANT_MODE_AUTO)
				FUNC8(mac, 0x48c, 0x2000);
			else
				FUNC6(mac, 0x48c, 0x2000);

			if (phy->phy_rev >= 2) {
				FUNC8(mac, 0x461, 0x10);
				FUNC7(mac, 0x4ad, 0xff00, 0x15);
				if (phy->phy_rev == 2) {
					FUNC9(mac, 0x427, 0x8);
				} else {
					FUNC7(mac, 0x427,
							 0xff00, 0x8);
				}

				if (phy->phy_rev >= 6)
					FUNC9(mac, 0x49b, 0xdc);
			}
		}
	}

	/* XXX v4 set AUTO_ANTDIV unconditionally */
	if (ant_mode == BWI_ANT_MODE_AUTO)
		FUNC3(mac, BWI_HFLAG_AUTO_ANTDIV);

	val = ant_mode << 8;
	FUNC5(mac, BWI_COMM_MOBJ, BWI_COMM_MOBJ_TX_BEACON,
			    0xfc3f, val);
	FUNC5(mac, BWI_COMM_MOBJ, BWI_COMM_MOBJ_TX_ACK,
			    0xfc3f, val);
	FUNC5(mac, BWI_COMM_MOBJ, BWI_COMM_MOBJ_TX_PROBE_RESP,
			    0xfc3f, val);

	/* XXX what's these */
	if (phy->phy_mode == IEEE80211_MODE_11B)
		FUNC0(sc, 0x5e, 0x4);

	FUNC1(sc, 0x100, 0x1000000);
	if (mac->mac_rev < 5)
		FUNC1(sc, 0x10c, 0x1000000);

	mac->mac_rf.rf_ant_mode = ant_mode;
}