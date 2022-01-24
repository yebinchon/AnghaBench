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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct bwi_softc {int dummy; } ;
struct bwi_rf {scalar_t__ rf_type; int rf_rev; } ;
struct TYPE_2__ {scalar_t__ phy_mode; } ;
struct bwi_mac {TYPE_1__ mac_phy; struct bwi_rf mac_rf; struct bwi_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_MAC_STATUS ; 
 scalar_t__ BWI_RF_T_BCM2050 ; 
 int FUNC0 (struct bwi_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ IEEE80211_MODE_11A ; 
 int PACKET_LEN ; 
 int /*<<< orphan*/  FUNC4 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwi_mac*,int,int const) ; 

void
FUNC6(struct bwi_mac *mac)
{
#define PACKET_LEN	5
	static const uint32_t	packet_11a[PACKET_LEN] =
	{ 0x000201cc, 0x00d40000, 0x00000000, 0x01000000, 0x00000000 };
	static const uint32_t	packet_11bg[PACKET_LEN] =
	{ 0x000b846e, 0x00d40000, 0x00000000, 0x01000000, 0x00000000 };

	struct bwi_softc *sc = mac->mac_sc;
	struct bwi_rf *rf = &mac->mac_rf;
	const uint32_t *packet;
	uint16_t val_50c;
	int wait_max, i;

	if (mac->mac_phy.phy_mode == IEEE80211_MODE_11A) {
		wait_max = 30;
		packet = packet_11a;
		val_50c = 1;
	} else {
		wait_max = 250;
		packet = packet_11bg;
		val_50c = 0;
	}

	for (i = 0; i < PACKET_LEN; ++i)
		FUNC5(mac, i * 4, packet[i]);

	FUNC1(sc, BWI_MAC_STATUS);	/* dummy read */

	FUNC2(sc, 0x568, 0);
	FUNC2(sc, 0x7c0, 0);
	FUNC2(sc, 0x50c, val_50c);
	FUNC2(sc, 0x508, 0);
	FUNC2(sc, 0x50a, 0);
	FUNC2(sc, 0x54c, 0);
	FUNC2(sc, 0x56a, 0x14);
	FUNC2(sc, 0x568, 0x826);
	FUNC2(sc, 0x500, 0);
	FUNC2(sc, 0x502, 0x30);

	if (rf->rf_type == BWI_RF_T_BCM2050 && rf->rf_rev <= 5)
		FUNC4(mac, 0x51, 0x17);

	for (i = 0; i < wait_max; ++i) {
		if (FUNC0(sc, 0x50e) & 0x80)
			break;
		FUNC3(10);
	}
	for (i = 0; i < 10; ++i) {
		if (FUNC0(sc, 0x50e) & 0x400)
			break;
		FUNC3(10);
	}
	for (i = 0; i < 10; ++i) {
		if ((FUNC0(sc, 0x690) & 0x100) == 0)
			break;
		FUNC3(10);
	}

	if (rf->rf_type == BWI_RF_T_BCM2050 && rf->rf_rev <= 5)
		FUNC4(mac, 0x51, 0x37);
#undef PACKET_LEN
}