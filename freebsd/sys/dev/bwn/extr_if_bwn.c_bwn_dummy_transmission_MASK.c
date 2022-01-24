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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct bwn_softc {int /*<<< orphan*/  sc_dev; } ;
struct bwn_phy {int type; int rf_ver; int rf_rev; } ;
struct bwn_mac {struct bwn_softc* mac_sc; struct bwn_phy mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwn_softc*) ; 
#define  BWN_PHYTYPE_LCN 130 
#define  BWN_PHYTYPE_LP 129 
#define  BWN_PHYTYPE_N 128 
 int FUNC1 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_mac*,unsigned int,int) ; 

void
FUNC7(struct bwn_mac *mac, int ofdm, int paon)
{
	struct bwn_phy *phy = &mac->mac_phy;
	struct bwn_softc *sc = mac->mac_sc;
	unsigned int i, max_loop;
	uint16_t value;
	uint32_t buffer[5] = {
		0x00000000, 0x00d40000, 0x00000000, 0x01000000, 0x00000000
	};

	if (ofdm) {
		max_loop = 0x1e;
		buffer[0] = 0x000201cc;
	} else {
		max_loop = 0xfa;
		buffer[0] = 0x000b846e;
	}

	FUNC0(mac->mac_sc);

	for (i = 0; i < 5; i++)
		FUNC6(mac, i * 4, buffer[i]);

	FUNC3(mac, 0x0568, 0x0000);
	FUNC3(mac, 0x07c0,
	    (FUNC5(sc->sc_dev) < 11) ? 0x0000 : 0x0100);

	value = (ofdm ? 0x41 : 0x40);
	FUNC3(mac, 0x050c, value);

	if (phy->type == BWN_PHYTYPE_N || phy->type == BWN_PHYTYPE_LP ||
	    phy->type == BWN_PHYTYPE_LCN)
		FUNC3(mac, 0x0514, 0x1a02);
	FUNC3(mac, 0x0508, 0x0000);
	FUNC3(mac, 0x050a, 0x0000);
	FUNC3(mac, 0x054c, 0x0000);
	FUNC3(mac, 0x056a, 0x0014);
	FUNC3(mac, 0x0568, 0x0826);
	FUNC3(mac, 0x0500, 0x0000);

	/* XXX TODO: n phy pa override? */

	switch (phy->type) {
	case BWN_PHYTYPE_N:
	case BWN_PHYTYPE_LCN:
		FUNC3(mac, 0x0502, 0x00d0);
		break;
	case BWN_PHYTYPE_LP:
		FUNC3(mac, 0x0502, 0x0050);
		break;
	default:
		FUNC3(mac, 0x0502, 0x0030);
		break;
	}

	/* flush */
	FUNC1(mac, 0x0502);

	if (phy->rf_ver == 0x2050 && phy->rf_rev <= 0x5)
		FUNC2(mac, 0x0051, 0x0017);
	for (i = 0x00; i < max_loop; i++) {
		value = FUNC1(mac, 0x050e);
		if (value & 0x0080)
			break;
		FUNC4(10);
	}
	for (i = 0x00; i < 0x0a; i++) {
		value = FUNC1(mac, 0x050e);
		if (value & 0x0400)
			break;
		FUNC4(10);
	}
	for (i = 0x00; i < 0x19; i++) {
		value = FUNC1(mac, 0x0690);
		if (!(value & 0x0100))
			break;
		FUNC4(10);
	}
	if (phy->rf_ver == 0x2050 && phy->rf_rev <= 0x5)
		FUNC2(mac, 0x0051, 0x0037);
}