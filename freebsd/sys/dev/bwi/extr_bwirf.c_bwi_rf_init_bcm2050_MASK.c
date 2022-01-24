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
struct bwi_softc {int sc_card_flags; } ;
struct bwi_rf {int rf_rev; int rf_calib; int /*<<< orphan*/  rf_curchan; int /*<<< orphan*/  rf_flags; } ;
struct bwi_phy {scalar_t__ phy_mode; int phy_flags; int phy_rev; int phy_version; } ;
struct bwi_mac {struct bwi_rf mac_rf; struct bwi_phy mac_phy; struct bwi_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_BBP_ATTEN ; 
 int /*<<< orphan*/  BWI_BPHY_CTRL ; 
 int BWI_CARD_F_EXT_LNA ; 
 int BWI_DBG_INIT ; 
 int BWI_DBG_RF ; 
 int BWI_PHY_F_LINKED ; 
 int /*<<< orphan*/  BWI_RF_ANTDIV ; 
 int /*<<< orphan*/  BWI_RF_CHAN_EX ; 
 int /*<<< orphan*/  BWI_RF_F_INITED ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct bwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwi_softc*,int,char*,int) ; 
 scalar_t__ IEEE80211_MODE_11B ; 
 int /*<<< orphan*/  FUNC6 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bwi_mac*,int,int,int) ; 
 int FUNC8 (struct bwi_mac*,int const) ; 
 int /*<<< orphan*/  FUNC9 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bwi_mac*,int const,int) ; 
 int /*<<< orphan*/  FUNC11 (struct bwi_mac*,int,int,int) ; 
 int FUNC12 (struct bwi_mac*,int const) ; 
 int /*<<< orphan*/  FUNC13 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct bwi_mac*,int const,int) ; 
 int SAVE_PHY_11G_MAX ; 
 int SAVE_PHY_COMM_MAX ; 
 int SAVE_RF_MAX ; 
 int FUNC15 (int) ; 
 int FUNC16 (struct bwi_mac*,int) ; 
 int FUNC17 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC18 (struct bwi_mac*,int /*<<< orphan*/ ) ; 

void
FUNC19(struct bwi_mac *mac)
{
#define SAVE_RF_MAX		3
#define SAVE_PHY_COMM_MAX	4
#define SAVE_PHY_11G_MAX	6

	static const uint16_t save_rf_regs[SAVE_RF_MAX] =
	{ 0x0043, 0x0051, 0x0052 };
	static const uint16_t save_phy_regs_comm[SAVE_PHY_COMM_MAX] =
	{ 0x0015, 0x005a, 0x0059, 0x0058 };
	static const uint16_t save_phy_regs_11g[SAVE_PHY_11G_MAX] =
	{ 0x0811, 0x0812, 0x0814, 0x0815, 0x0429, 0x0802 };

	uint16_t save_rf[SAVE_RF_MAX];
	uint16_t save_phy_comm[SAVE_PHY_COMM_MAX];
	uint16_t save_phy_11g[SAVE_PHY_11G_MAX];
	uint16_t phyr_35, phyr_30 = 0, rfr_78, phyr_80f = 0, phyr_810 = 0;
	uint16_t bphy_ctrl = 0, bbp_atten, rf_chan_ex;
	uint16_t phy812_val;
	uint16_t calib;
	uint32_t test_lim, test;
	struct bwi_softc *sc = mac->mac_sc;
	struct bwi_phy *phy = &mac->mac_phy;
	struct bwi_rf *rf = &mac->mac_rf;
	int i;

	/*
	 * Save registers for later restoring
	 */
	for (i = 0; i < SAVE_RF_MAX; ++i)
		save_rf[i] = FUNC12(mac, save_rf_regs[i]);
	for (i = 0; i < SAVE_PHY_COMM_MAX; ++i)
		save_phy_comm[i] = FUNC8(mac, save_phy_regs_comm[i]);

	if (phy->phy_mode == IEEE80211_MODE_11B) {
		phyr_30 = FUNC8(mac, 0x30);
		bphy_ctrl = FUNC1(sc, BWI_BPHY_CTRL);

		FUNC10(mac, 0x30, 0xff);
		FUNC3(sc, BWI_BPHY_CTRL, 0x3f3f);
	} else if ((phy->phy_flags & BWI_PHY_F_LINKED) || phy->phy_rev >= 2) {
		for (i = 0; i < SAVE_PHY_11G_MAX; ++i) {
			save_phy_11g[i] =
				FUNC8(mac, save_phy_regs_11g[i]);
		}

		FUNC9(mac, 0x814, 0x3);
		FUNC6(mac, 0x815, 0x3);
		FUNC6(mac, 0x429, 0x8000);
		FUNC6(mac, 0x802, 0x3);

		phyr_80f = FUNC8(mac, 0x80f);
		phyr_810 = FUNC8(mac, 0x810);

		if (phy->phy_rev >= 3)
			FUNC10(mac, 0x80f, 0xc020);
		else
			FUNC10(mac, 0x80f, 0x8020);
		FUNC10(mac, 0x810, 0);

		phy812_val = FUNC16(mac, 0x011);
		FUNC10(mac, 0x812, phy812_val);
		if (phy->phy_rev < 7 ||
		    (sc->sc_card_flags & BWI_CARD_F_EXT_LNA) == 0)
			FUNC10(mac, 0x811, 0x1b3);
		else
			FUNC10(mac, 0x811, 0x9b3);
	}
	FUNC2(sc, BWI_RF_ANTDIV, 0x8000);

	phyr_35 = FUNC8(mac, 0x35);
	FUNC6(mac, 0x35, 0x80);

	bbp_atten = FUNC1(sc, BWI_BBP_ATTEN);
	rf_chan_ex = FUNC1(sc, BWI_RF_CHAN_EX);

	if (phy->phy_version == 0) {
		FUNC3(sc, BWI_BBP_ATTEN, 0x122);
	} else {
		if (phy->phy_version >= 2)
			FUNC7(mac, 0x3, 0xffbf, 0x40);
		FUNC2(sc, BWI_RF_CHAN_EX, 0x2000);
	}

	calib = FUNC17(mac);

	if (phy->phy_mode == IEEE80211_MODE_11B)
		FUNC14(mac, 0x78, 0x26);

	if ((phy->phy_flags & BWI_PHY_F_LINKED) || phy->phy_rev >= 2) {
		phy812_val = FUNC16(mac, 0x011);
		FUNC10(mac, 0x812, phy812_val);
	}

	FUNC10(mac, 0x15, 0xbfaf);
	FUNC10(mac, 0x2b, 0x1403);

	if ((phy->phy_flags & BWI_PHY_F_LINKED) || phy->phy_rev >= 2) {
		phy812_val = FUNC16(mac, 0x001);
		FUNC10(mac, 0x812, phy812_val);
	}

	FUNC10(mac, 0x15, 0xbfa0);

	FUNC13(mac, 0x51, 0x4);
	if (rf->rf_rev == 8) {
		FUNC14(mac, 0x43, 0x1f);
	} else {
		FUNC14(mac, 0x52, 0);
		FUNC11(mac, 0x43, 0xfff0, 0x9);
	}

	test_lim = 0;
	FUNC10(mac, 0x58, 0);
	for (i = 0; i < 16; ++i) {
		FUNC10(mac, 0x5a, 0x480);
		FUNC10(mac, 0x59, 0xc810);

		FUNC10(mac, 0x58, 0xd);
		if ((phy->phy_flags & BWI_PHY_F_LINKED) || phy->phy_rev >= 2) {
			phy812_val = FUNC16(mac, 0x101);
			FUNC10(mac, 0x812, phy812_val);
		}
		FUNC10(mac, 0x15, 0xafb0);
		FUNC4(10);

		if ((phy->phy_flags & BWI_PHY_F_LINKED) || phy->phy_rev >= 2) {
			phy812_val = FUNC16(mac, 0x101);
			FUNC10(mac, 0x812, phy812_val);
		}
		FUNC10(mac, 0x15, 0xefb0);
		FUNC4(10);

		if ((phy->phy_flags & BWI_PHY_F_LINKED) || phy->phy_rev >= 2) {
			phy812_val = FUNC16(mac, 0x100);
			FUNC10(mac, 0x812, phy812_val);
		}
		FUNC10(mac, 0x15, 0xfff0);
		FUNC4(20);

		test_lim += FUNC8(mac, 0x2d);

		FUNC10(mac, 0x58, 0);
		if ((phy->phy_flags & BWI_PHY_F_LINKED) || phy->phy_rev >= 2) {
			phy812_val = FUNC16(mac, 0x101);
			FUNC10(mac, 0x812, phy812_val);
		}
		FUNC10(mac, 0x15, 0xafb0);
	}
	++test_lim;
	test_lim >>= 9;

	FUNC4(10);

	test = 0;
	FUNC10(mac, 0x58, 0);
	for (i = 0; i < 16; ++i) {
		int j;

		rfr_78 = (FUNC15(i) << 1) | 0x20;
		FUNC14(mac, 0x78, rfr_78);
		FUNC4(10);

		/* NB: This block is slight different than the above one */
		for (j = 0; j < 16; ++j) {
			FUNC10(mac, 0x5a, 0xd80);
			FUNC10(mac, 0x59, 0xc810);

			FUNC10(mac, 0x58, 0xd);
			if ((phy->phy_flags & BWI_PHY_F_LINKED) ||
			    phy->phy_rev >= 2) {
				phy812_val = FUNC16(mac, 0x101);
				FUNC10(mac, 0x812, phy812_val);
			}
			FUNC10(mac, 0x15, 0xafb0);
			FUNC4(10);

			if ((phy->phy_flags & BWI_PHY_F_LINKED) ||
			    phy->phy_rev >= 2) {
				phy812_val = FUNC16(mac, 0x101);
				FUNC10(mac, 0x812, phy812_val);
			}
			FUNC10(mac, 0x15, 0xefb0);
			FUNC4(10);

			if ((phy->phy_flags & BWI_PHY_F_LINKED) ||
			    phy->phy_rev >= 2) {
				phy812_val = FUNC16(mac, 0x100);
				FUNC10(mac, 0x812, phy812_val);
			}
			FUNC10(mac, 0x15, 0xfff0);
			FUNC4(10);

			test += FUNC8(mac, 0x2d);

			FUNC10(mac, 0x58, 0);
			if ((phy->phy_flags & BWI_PHY_F_LINKED) ||
			    phy->phy_rev >= 2) {
				phy812_val = FUNC16(mac, 0x101);
				FUNC10(mac, 0x812, phy812_val);
			}
			FUNC10(mac, 0x15, 0xafb0);
		}

		++test;
		test >>= 8;

		if (test > test_lim)
			break;
	}
	if (i > 15)
		rf->rf_calib = rfr_78;
	else
		rf->rf_calib = calib;
	if (rf->rf_calib != 0xffff) {
		FUNC5(sc, BWI_DBG_RF | BWI_DBG_INIT,
			"RF calibration value: 0x%04x\n", rf->rf_calib);
		rf->rf_flags |= BWI_RF_F_INITED;
	}

	/*
	 * Restore trashes registers
	 */
	FUNC10(mac, save_phy_regs_comm[0], save_phy_comm[0]);

	for (i = 0; i < SAVE_RF_MAX; ++i) {
		int pos = (i + 1) % SAVE_RF_MAX;

		FUNC14(mac, save_rf_regs[pos], save_rf[pos]);
	}
	for (i = 1; i < SAVE_PHY_COMM_MAX; ++i)
		FUNC10(mac, save_phy_regs_comm[i], save_phy_comm[i]);

	FUNC3(sc, BWI_BBP_ATTEN, bbp_atten);
	if (phy->phy_version != 0)
		FUNC3(sc, BWI_RF_CHAN_EX, rf_chan_ex);

	FUNC10(mac, 0x35, phyr_35);
	FUNC18(mac, rf->rf_curchan);

	if (phy->phy_mode == IEEE80211_MODE_11B) {
		FUNC10(mac, 0x30, phyr_30);
		FUNC3(sc, BWI_BPHY_CTRL, bphy_ctrl);
	} else if ((phy->phy_flags & BWI_PHY_F_LINKED) || phy->phy_rev >= 2) {
		/* XXX Spec only says when PHY is linked (gmode) */
		FUNC0(sc, BWI_RF_ANTDIV, 0x8000);

		for (i = 0; i < SAVE_PHY_11G_MAX; ++i) {
			FUNC10(mac, save_phy_regs_11g[i],
				  save_phy_11g[i]);
		}

		FUNC10(mac, 0x80f, phyr_80f);
		FUNC10(mac, 0x810, phyr_810);
	}

#undef SAVE_PHY_11G_MAX
#undef SAVE_PHY_COMM_MAX
#undef SAVE_RF_MAX
}