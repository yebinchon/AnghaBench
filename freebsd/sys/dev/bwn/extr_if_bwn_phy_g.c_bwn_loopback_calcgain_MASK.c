#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_3__ {int board_flags; } ;
struct bwn_softc {TYPE_1__ sc_board_info; } ;
struct TYPE_4__ {int att; } ;
struct bwn_phy_g {int pg_max_lb_gain; int pg_trsw_rx_gain; TYPE_2__ pg_bbatt; } ;
struct bwn_phy {int rev; int rf_rev; struct bwn_phy_g phy_g; } ;
struct bwn_mac {struct bwn_softc* mac_sc; struct bwn_phy mac_phy; } ;

/* Variables and functions */
 int BHND_BFL_EXTLNA ; 
 int /*<<< orphan*/  BWN_PHY_ANALOGOVER ; 
 int /*<<< orphan*/  BWN_PHY_ANALOGOVERVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BWN_PHY_CCKBBANDCFG ; 
 int /*<<< orphan*/  BWN_PHY_CRS0 ; 
 int /*<<< orphan*/  BWN_PHY_LO_CTL ; 
 int /*<<< orphan*/  BWN_PHY_LO_LEAKAGE ; 
 int /*<<< orphan*/  BWN_PHY_LO_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BWN_PHY_PGACTL ; 
 int FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BWN_PHY_RFOVER ; 
 int /*<<< orphan*/  BWN_PHY_RFOVERVAL ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_mac*,int,int) ; 
 int FUNC7 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bwn_mac*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct bwn_mac*,int) ; 

__attribute__((used)) static void
FUNC12(struct bwn_mac *mac)
{
	struct bwn_phy *phy = &mac->mac_phy;
	struct bwn_phy_g *pg = &phy->phy_g;
	struct bwn_softc *sc = mac->mac_sc;
	uint16_t backup_phy[16] = { 0 };
	uint16_t backup_radio[3];
	uint16_t backup_bband;
	uint16_t i, j, loop_i_max;
	uint16_t trsw_rx;
	uint16_t loop1_outer_done, loop1_inner_done;

	backup_phy[0] = FUNC2(mac, BWN_PHY_CRS0);
	backup_phy[1] = FUNC2(mac, BWN_PHY_CCKBBANDCFG);
	backup_phy[2] = FUNC2(mac, BWN_PHY_RFOVER);
	backup_phy[3] = FUNC2(mac, BWN_PHY_RFOVERVAL);
	if (phy->rev != 1) {
		backup_phy[4] = FUNC2(mac, BWN_PHY_ANALOGOVER);
		backup_phy[5] = FUNC2(mac, BWN_PHY_ANALOGOVERVAL);
	}
	backup_phy[6] = FUNC2(mac, FUNC0(0x5a));
	backup_phy[7] = FUNC2(mac, FUNC0(0x59));
	backup_phy[8] = FUNC2(mac, FUNC0(0x58));
	backup_phy[9] = FUNC2(mac, FUNC0(0x0a));
	backup_phy[10] = FUNC2(mac, FUNC0(0x03));
	backup_phy[11] = FUNC2(mac, BWN_PHY_LO_MASK);
	backup_phy[12] = FUNC2(mac, BWN_PHY_LO_CTL);
	backup_phy[13] = FUNC2(mac, FUNC0(0x2b));
	backup_phy[14] = FUNC2(mac, BWN_PHY_PGACTL);
	backup_phy[15] = FUNC2(mac, BWN_PHY_LO_LEAKAGE);
	backup_bband = pg->pg_bbatt.att;
	backup_radio[0] = FUNC7(mac, 0x52);
	backup_radio[1] = FUNC7(mac, 0x43);
	backup_radio[2] = FUNC7(mac, 0x7a);

	FUNC1(mac, BWN_PHY_CRS0, 0x3fff);
	FUNC3(mac, BWN_PHY_CCKBBANDCFG, 0x8000);
	FUNC3(mac, BWN_PHY_RFOVER, 0x0002);
	FUNC1(mac, BWN_PHY_RFOVERVAL, 0xfffd);
	FUNC3(mac, BWN_PHY_RFOVER, 0x0001);
	FUNC1(mac, BWN_PHY_RFOVERVAL, 0xfffe);
	if (phy->rev != 1) {
		FUNC3(mac, BWN_PHY_ANALOGOVER, 0x0001);
		FUNC1(mac, BWN_PHY_ANALOGOVERVAL, 0xfffe);
		FUNC3(mac, BWN_PHY_ANALOGOVER, 0x0002);
		FUNC1(mac, BWN_PHY_ANALOGOVERVAL, 0xfffd);
	}
	FUNC3(mac, BWN_PHY_RFOVER, 0x000c);
	FUNC3(mac, BWN_PHY_RFOVERVAL, 0x000c);
	FUNC3(mac, BWN_PHY_RFOVER, 0x0030);
	FUNC4(mac, BWN_PHY_RFOVERVAL, 0xffcf, 0x10);

	FUNC5(mac, FUNC0(0x5a), 0x0780);
	FUNC5(mac, FUNC0(0x59), 0xc810);
	FUNC5(mac, FUNC0(0x58), 0x000d);

	FUNC3(mac, FUNC0(0x0a), 0x2000);
	if (phy->rev != 1) {
		FUNC3(mac, BWN_PHY_ANALOGOVER, 0x0004);
		FUNC1(mac, BWN_PHY_ANALOGOVERVAL, 0xfffb);
	}
	FUNC4(mac, FUNC0(0x03), 0xff9f, 0x40);

	if (phy->rf_rev == 8)
		FUNC9(mac, 0x43, 0x000f);
	else {
		FUNC9(mac, 0x52, 0);
		FUNC8(mac, 0x43, 0xfff0, 0x9);
	}
	FUNC11(mac, 11);

	if (phy->rev >= 3)
		FUNC5(mac, BWN_PHY_LO_MASK, 0xc020);
	else
		FUNC5(mac, BWN_PHY_LO_MASK, 0x8020);
	FUNC5(mac, BWN_PHY_LO_CTL, 0);

	FUNC4(mac, FUNC0(0x2b), 0xffc0, 0x01);
	FUNC4(mac, FUNC0(0x2b), 0xc0ff, 0x800);

	FUNC3(mac, BWN_PHY_RFOVER, 0x0100);
	FUNC1(mac, BWN_PHY_RFOVERVAL, 0xcfff);

	if (sc->sc_board_info.board_flags & BHND_BFL_EXTLNA) {
		if (phy->rev >= 7) {
			FUNC3(mac, BWN_PHY_RFOVER, 0x0800);
			FUNC3(mac, BWN_PHY_RFOVERVAL, 0x8000);
		}
	}
	FUNC6(mac, 0x7a, 0x00f7);

	j = 0;
	loop_i_max = (phy->rf_rev == 8) ? 15 : 9;
	for (i = 0; i < loop_i_max; i++) {
		for (j = 0; j < 16; j++) {
			FUNC9(mac, 0x43, i);
			FUNC4(mac, BWN_PHY_RFOVERVAL, 0xf0ff,
			    (j << 8));
			FUNC4(mac, BWN_PHY_PGACTL, 0x0fff, 0xa000);
			FUNC3(mac, BWN_PHY_PGACTL, 0xf000);
			FUNC10(20);
			if (FUNC2(mac, BWN_PHY_LO_LEAKAGE) >= 0xdfc)
				goto done0;
		}
	}
done0:
	loop1_outer_done = i;
	loop1_inner_done = j;
	if (j >= 8) {
		FUNC3(mac, BWN_PHY_RFOVERVAL, 0x30);
		trsw_rx = 0x1b;
		for (j = j - 8; j < 16; j++) {
			FUNC4(mac, BWN_PHY_RFOVERVAL, 0xf0ff, j << 8);
			FUNC4(mac, BWN_PHY_PGACTL, 0x0fff, 0xa000);
			FUNC3(mac, BWN_PHY_PGACTL, 0xf000);
			FUNC10(20);
			trsw_rx -= 3;
			if (FUNC2(mac, BWN_PHY_LO_LEAKAGE) >= 0xdfc)
				goto done1;
		}
	} else
		trsw_rx = 0x18;
done1:

	if (phy->rev != 1) {
		FUNC5(mac, BWN_PHY_ANALOGOVER, backup_phy[4]);
		FUNC5(mac, BWN_PHY_ANALOGOVERVAL, backup_phy[5]);
	}
	FUNC5(mac, FUNC0(0x5a), backup_phy[6]);
	FUNC5(mac, FUNC0(0x59), backup_phy[7]);
	FUNC5(mac, FUNC0(0x58), backup_phy[8]);
	FUNC5(mac, FUNC0(0x0a), backup_phy[9]);
	FUNC5(mac, FUNC0(0x03), backup_phy[10]);
	FUNC5(mac, BWN_PHY_LO_MASK, backup_phy[11]);
	FUNC5(mac, BWN_PHY_LO_CTL, backup_phy[12]);
	FUNC5(mac, FUNC0(0x2b), backup_phy[13]);
	FUNC5(mac, BWN_PHY_PGACTL, backup_phy[14]);

	FUNC11(mac, backup_bband);

	FUNC9(mac, 0x52, backup_radio[0]);
	FUNC9(mac, 0x43, backup_radio[1]);
	FUNC9(mac, 0x7a, backup_radio[2]);

	FUNC5(mac, BWN_PHY_RFOVER, backup_phy[2] | 0x0003);
	FUNC10(10);
	FUNC5(mac, BWN_PHY_RFOVER, backup_phy[2]);
	FUNC5(mac, BWN_PHY_RFOVERVAL, backup_phy[3]);
	FUNC5(mac, BWN_PHY_CRS0, backup_phy[0]);
	FUNC5(mac, BWN_PHY_CCKBBANDCFG, backup_phy[1]);

	pg->pg_max_lb_gain =
	    ((loop1_inner_done * 6) - (loop1_outer_done * 4)) - 11;
	pg->pg_trsw_rx_gain = trsw_rx * 2;
}