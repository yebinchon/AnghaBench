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
struct bwi_softc {int sc_card_flags; } ;
struct bwi_rf {int rf_rev; int rf_lo_gain; int rf_rx_gain; } ;
struct bwi_phy {int phy_rev; } ;
struct TYPE_2__ {int bbp_atten; } ;
struct bwi_mac {struct bwi_softc* mac_sc; TYPE_1__ mac_tpctl; struct bwi_rf mac_rf; struct bwi_phy mac_phy; } ;

/* Variables and functions */
 int BWI_CARD_F_EXT_LNA ; 
 int BWI_DBG_INIT ; 
 int BWI_DBG_RF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_mac*,int,int,int) ; 
 int FUNC4 (struct bwi_mac*,int const) ; 
 int /*<<< orphan*/  FUNC5 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bwi_mac*,int const,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bwi_mac*,int,int,int) ; 
 int FUNC9 (struct bwi_mac*,int const) ; 
 int /*<<< orphan*/  FUNC10 (struct bwi_mac*,int const,int) ; 
 int SAVE_PHY_MAX ; 
 int SAVE_RF_MAX ; 
 int /*<<< orphan*/  FUNC11 (struct bwi_mac*,int) ; 
 scalar_t__ FUNC12 (struct bwi_mac*,int) ; 

void
FUNC13(struct bwi_mac *mac)
{
#define SAVE_PHY_MAX	15
#define SAVE_RF_MAX	3

	static const uint16_t save_rf_regs[SAVE_RF_MAX] =
	{ 0x52, 0x43, 0x7a };
	static const uint16_t save_phy_regs[SAVE_PHY_MAX] = {
		0x0429, 0x0001, 0x0811, 0x0812,
		0x0814, 0x0815, 0x005a, 0x0059,
		0x0058, 0x000a, 0x0003, 0x080f,
		0x0810, 0x002b, 0x0015
	};

	struct bwi_softc *sc = mac->mac_sc;
	struct bwi_phy *phy = &mac->mac_phy;
	struct bwi_rf *rf = &mac->mac_rf;
	uint16_t save_phy[SAVE_PHY_MAX];
	uint16_t save_rf[SAVE_RF_MAX];
	uint16_t trsw;
	int i, j, loop1_max, loop1, loop2;

	/*
	 * Save PHY/RF registers for later restoration
	 */
	for (i = 0; i < SAVE_PHY_MAX; ++i)
		save_phy[i] = FUNC4(mac, save_phy_regs[i]);
	FUNC4(mac, 0x2d); /* dummy read */

	for (i = 0; i < SAVE_RF_MAX; ++i)
		save_rf[i] = FUNC9(mac, save_rf_regs[i]);

	FUNC2(mac, 0x429, 0xc000);
	FUNC5(mac, 0x1, 0x8000);

	FUNC5(mac, 0x811, 0x2);
	FUNC2(mac, 0x812, 0x2);
	FUNC5(mac, 0x811, 0x1);
	FUNC2(mac, 0x812, 0x1);

	FUNC5(mac, 0x814, 0x1);
	FUNC2(mac, 0x815, 0x1);
	FUNC5(mac, 0x814, 0x2);
	FUNC2(mac, 0x815, 0x2);

	FUNC5(mac, 0x811, 0xc);
	FUNC5(mac, 0x812, 0xc);
	FUNC5(mac, 0x811, 0x30);
	FUNC3(mac, 0x812, 0xffcf, 0x10);

	FUNC6(mac, 0x5a, 0x780);
	FUNC6(mac, 0x59, 0xc810);
	FUNC6(mac, 0x58, 0xd);
	FUNC5(mac, 0xa, 0x2000);

	FUNC5(mac, 0x814, 0x4);
	FUNC2(mac, 0x815, 0x4);

	FUNC3(mac, 0x3, 0xff9f, 0x40);

	if (rf->rf_rev == 8) {
		loop1_max = 15;
		FUNC10(mac, 0x43, loop1_max);
	} else {
		loop1_max = 9;
	    	FUNC10(mac, 0x52, 0x0);
		FUNC8(mac, 0x43, 0xfff0, loop1_max);
	}

	FUNC11(mac, 11);

	if (phy->phy_rev >= 3)
		FUNC6(mac, 0x80f, 0xc020);
	else
		FUNC6(mac, 0x80f, 0x8020);
	FUNC6(mac, 0x810, 0);

	FUNC3(mac, 0x2b, 0xffc0, 0x1);
	FUNC3(mac, 0x2b, 0xc0ff, 0x800);
	FUNC5(mac, 0x811, 0x100);
	FUNC2(mac, 0x812, 0x3000);

	if ((sc->sc_card_flags & BWI_CARD_F_EXT_LNA) &&
	    phy->phy_rev >= 7) {
		FUNC5(mac, 0x811, 0x800);
		FUNC5(mac, 0x812, 0x8000);
	}
	FUNC7(mac, 0x7a, 0xff08);

	/*
	 * Find out 'loop1/loop2', which will be used to calculate
	 * max loopback gain later
	 */
	j = 0;
	for (i = 0; i < loop1_max; ++i) {
		for (j = 0; j < 16; ++j) {
			FUNC10(mac, 0x43, i);

			if (FUNC12(mac, j))
				goto loop1_exit;
		}
	}
loop1_exit:
	loop1 = i;
	loop2 = j;

	/*
	 * Find out 'trsw', which will be used to calculate
	 * TRSW(TX/RX switch) RX gain later
	 */
	if (loop2 >= 8) {
		FUNC5(mac, 0x812, 0x30);
		trsw = 0x1b;
		for (i = loop2 - 8; i < 16; ++i) {
			trsw -= 3;
			if (FUNC12(mac, i))
				break;
		}
	} else {
		trsw = 0x18;
	}

	/*
	 * Restore saved PHY/RF registers
	 */
	/* First 4 saved PHY registers need special processing */
	for (i = 4; i < SAVE_PHY_MAX; ++i)
		FUNC6(mac, save_phy_regs[i], save_phy[i]);

	FUNC11(mac, mac->mac_tpctl.bbp_atten);

	for (i = 0; i < SAVE_RF_MAX; ++i)
		FUNC10(mac, save_rf_regs[i], save_rf[i]);

	FUNC6(mac, save_phy_regs[2], save_phy[2] | 0x3);
	FUNC0(10);
	FUNC6(mac, save_phy_regs[2], save_phy[2]);
	FUNC6(mac, save_phy_regs[3], save_phy[3]);
	FUNC6(mac, save_phy_regs[0], save_phy[0]);
	FUNC6(mac, save_phy_regs[1], save_phy[1]);

	/*
	 * Calculate gains
	 */
	rf->rf_lo_gain = (loop2 * 6) - (loop1 * 4) - 11;
	rf->rf_rx_gain = trsw * 2;
	FUNC1(mac->mac_sc, BWI_DBG_RF | BWI_DBG_INIT,
		"lo gain: %u, rx gain: %u\n",
		rf->rf_lo_gain, rf->rf_rx_gain);

#undef SAVE_RF_MAX
#undef SAVE_PHY_MAX
}