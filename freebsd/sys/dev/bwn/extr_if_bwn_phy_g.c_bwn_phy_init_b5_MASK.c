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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct TYPE_2__ {scalar_t__ board_vendor; scalar_t__ board_type; } ;
struct bwn_softc {TYPE_1__ sc_board_info; } ;
struct bwn_phy_g {int /*<<< orphan*/  pg_txctl; int /*<<< orphan*/  pg_rfatt; int /*<<< orphan*/  pg_bbatt; } ;
struct bwn_phy {int analog; int rf_ver; int rev; int chan; scalar_t__ gmode; struct bwn_phy_g phy_g; } ;
struct bwn_mac {int mac_flags; struct bwn_softc* mac_sc; struct bwn_phy mac_phy; } ;

/* Variables and functions */
 scalar_t__ BHND_BOARD_BU4306 ; 
 int BWN_MAC_FLAG_BADFRAME_PREEMP ; 
 int BWN_PHY_RADIO ; 
 int BWN_PHY_RADIO_BITFIELD ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int,int) ; 
 int FUNC3 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_mac*,int,int) ; 
 scalar_t__ PCI_VENDOR_BROADCOM ; 
 int /*<<< orphan*/  FUNC7 (struct bwn_mac*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bwn_mac*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct bwn_mac *mac)
{
	struct bwn_phy *phy = &mac->mac_phy;
	struct bwn_phy_g *pg = &phy->phy_g;
	struct bwn_softc *sc = mac->mac_sc;
	uint16_t offset, value;
	uint8_t old_channel;

	if (phy->analog == 1)
		FUNC4(mac, 0x007a, 0x0050);
	if ((sc->sc_board_info.board_vendor != PCI_VENDOR_BROADCOM) &&
	    (sc->sc_board_info.board_type != BHND_BOARD_BU4306)) {
		value = 0x2120;
		for (offset = 0x00a8; offset < 0x00c7; offset++) {
			FUNC2(mac, offset, value);
			value += 0x202;
		}
	}
	FUNC1(mac, 0x0035, 0xf0ff, 0x0700);
	if (phy->rf_ver == 0x2050)
		FUNC2(mac, 0x0038, 0x0667);

	if (phy->gmode || phy->rev >= 2) {
		if (phy->rf_ver == 0x2050) {
			FUNC4(mac, 0x007a, 0x0020);
			FUNC4(mac, 0x0051, 0x0004);
		}
		FUNC6(mac, BWN_PHY_RADIO, 0x0000);

		FUNC0(mac, 0x0802, 0x0100);
		FUNC0(mac, 0x042b, 0x2000);

		FUNC2(mac, 0x001c, 0x186a);

		FUNC1(mac, 0x0013, 0x00ff, 0x1900);
		FUNC1(mac, 0x0035, 0xffc0, 0x0064);
		FUNC1(mac, 0x005d, 0xff80, 0x000a);
	}

	if (mac->mac_flags & BWN_MAC_FLAG_BADFRAME_PREEMP)
		FUNC0(mac, BWN_PHY_RADIO_BITFIELD, (1 << 11));

	if (phy->analog == 1) {
		FUNC2(mac, 0x0026, 0xce00);
		FUNC2(mac, 0x0021, 0x3763);
		FUNC2(mac, 0x0022, 0x1bc3);
		FUNC2(mac, 0x0023, 0x06f9);
		FUNC2(mac, 0x0024, 0x037e);
	} else
		FUNC2(mac, 0x0026, 0xcc00);
	FUNC2(mac, 0x0030, 0x00c6);
	FUNC6(mac, 0x03ec, 0x3f22);

	if (phy->analog == 1)
		FUNC2(mac, 0x0020, 0x3e1c);
	else
		FUNC2(mac, 0x0020, 0x301c);

	if (phy->analog == 0)
		FUNC6(mac, 0x03e4, 0x3000);

	old_channel = phy->chan;
	FUNC8(mac, 7, 0);

	if (phy->rf_ver != 0x2050) {
		FUNC5(mac, 0x0075, 0x0080);
		FUNC5(mac, 0x0079, 0x0081);
	}

	FUNC5(mac, 0x0050, 0x0020);
	FUNC5(mac, 0x0050, 0x0023);

	if (phy->rf_ver == 0x2050) {
		FUNC5(mac, 0x0050, 0x0020);
		FUNC5(mac, 0x005a, 0x0070);
	}

	FUNC5(mac, 0x005b, 0x007b);
	FUNC5(mac, 0x005c, 0x00b0);
	FUNC4(mac, 0x007a, 0x0007);

	FUNC8(mac, old_channel, 0);
	FUNC2(mac, 0x0014, 0x0080);
	FUNC2(mac, 0x0032, 0x00ca);
	FUNC2(mac, 0x002a, 0x88a3);

	FUNC7(mac, &pg->pg_bbatt, &pg->pg_rfatt,
	    pg->pg_txctl);

	if (phy->rf_ver == 0x2050)
		FUNC5(mac, 0x005d, 0x000d);

	FUNC6(mac, 0x03e4, (FUNC3(mac, 0x03e4) & 0xffc0) | 0x0004);
}