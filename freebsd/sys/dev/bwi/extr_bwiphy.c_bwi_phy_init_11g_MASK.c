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
struct bwi_tpctl {int tp_ctrl2; int tp_ctrl1; } ;
struct bwi_softc {int sc_card_flags; scalar_t__ sc_bbp_id; int sc_bbp_pkg; } ;
struct bwi_rf {int rf_rev; scalar_t__ rf_type; scalar_t__* rf_nrssi; } ;
struct bwi_phy {int phy_rev; int phy_flags; } ;
struct bwi_mac {struct bwi_tpctl mac_tpctl; struct bwi_rf mac_rf; struct bwi_phy mac_phy; struct bwi_softc* mac_sc; } ;

/* Variables and functions */
 scalar_t__ BWI_BBPID_BCM4306 ; 
 int BWI_CARD_F_PA_GPIO9 ; 
 int BWI_CARD_F_SW_NRSSI ; 
 scalar_t__ BWI_INVALID_NRSSI ; 
 int BWI_PHY_F_LINKED ; 
 scalar_t__ BWI_RF_T_BCM2050 ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_mac*,int,int,int) ; 
 int FUNC3 (struct bwi_mac*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bwi_mac*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC9 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC10 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC11 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC12 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC13 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC14 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC15 (struct bwi_mac*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct bwi_mac*,struct bwi_tpctl const*) ; 
 int /*<<< orphan*/  FUNC17 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC18 (struct bwi_mac*) ; 

__attribute__((used)) static void
FUNC19(struct bwi_mac *mac)
{
	struct bwi_softc *sc = mac->mac_sc;
	struct bwi_phy *phy = &mac->mac_phy;
	struct bwi_rf *rf = &mac->mac_rf;
	const struct bwi_tpctl *tpctl = &mac->mac_tpctl;

	if (phy->phy_rev == 1)
		FUNC10(mac);
	else
		FUNC11(mac);

	if (phy->phy_rev >= 2 || (phy->phy_flags & BWI_PHY_F_LINKED))
		FUNC9(mac);

	if (phy->phy_rev >= 2) {
		FUNC5(mac, 0x814, 0);
		FUNC5(mac, 0x815, 0);

		if (phy->phy_rev == 2) {
			FUNC5(mac, 0x811, 0);
			FUNC5(mac, 0x15, 0xc0);
		} else if (phy->phy_rev > 5) {
			FUNC5(mac, 0x811, 0x400);
			FUNC5(mac, 0x15, 0xc0);
		}
	}

	if (phy->phy_rev >= 2 || (phy->phy_flags & BWI_PHY_F_LINKED)) {
		uint16_t val;

		val = FUNC3(mac, 0x400) & 0xff;
		if (val == 3 || val == 5) {
			FUNC5(mac, 0x4c2, 0x1816);
			FUNC5(mac, 0x4c3, 0x8006);
			if (val == 5) {
				FUNC2(mac, 0x4cc,
						 0xff, 0x1f00);
			}
		}
	}

	if ((phy->phy_rev <= 2 && (phy->phy_flags & BWI_PHY_F_LINKED)) ||
	    phy->phy_rev >= 2)
		FUNC5(mac, 0x47e, 0x78);

	if (rf->rf_rev == 8) {
		FUNC4(mac, 0x801, 0x80);
		FUNC4(mac, 0x43e, 0x4);
	}

	if (phy->phy_rev >= 2 && (phy->phy_flags & BWI_PHY_F_LINKED))
		FUNC13(mac);

	if (rf->rf_rev != 8)
		FUNC14(mac);

	if (tpctl->tp_ctrl2 == 0xffff) {
		FUNC17(mac);
	} else {
		if (rf->rf_type == BWI_RF_T_BCM2050 && rf->rf_rev == 8) {
			FUNC7(mac, 0x52,
				 (tpctl->tp_ctrl1 << 4) | tpctl->tp_ctrl2);
		} else {
			FUNC6(mac, 0x52, 0xfff0, tpctl->tp_ctrl2);
		}

		if (phy->phy_rev >= 6) {
			FUNC2(mac, 0x36, 0xfff,
					 tpctl->tp_ctrl2 << 12);
		}

		if (sc->sc_card_flags & BWI_CARD_F_PA_GPIO9)
			FUNC5(mac, 0x2e, 0x8075);
		else
			FUNC5(mac, 0x2e, 0x807f);

		if (phy->phy_rev < 2)
			FUNC5(mac, 0x2f, 0x101);
		else
			FUNC5(mac, 0x2f, 0x202);
	}

	if ((phy->phy_flags & BWI_PHY_F_LINKED) || phy->phy_rev >= 2) {
		FUNC16(mac, tpctl);
		FUNC5(mac, 0x80f, 0x8078);
	}

	if ((sc->sc_card_flags & BWI_CARD_F_SW_NRSSI) == 0) {
		FUNC15(mac, 0xffff /* XXX */);
		FUNC18(mac);
	} else if ((phy->phy_flags & BWI_PHY_F_LINKED) || phy->phy_rev >= 2) {
		if (rf->rf_nrssi[0] == BWI_INVALID_NRSSI) {
			FUNC0(rf->rf_nrssi[1] == BWI_INVALID_NRSSI,
			    ("rf_nrssi[1] %d", rf->rf_nrssi[1]));
			FUNC12(mac);
		} else {
			FUNC0(rf->rf_nrssi[1] != BWI_INVALID_NRSSI,
			    ("rf_nrssi[1] %d", rf->rf_nrssi[1]));
			FUNC18(mac);
		}
	}

	if (rf->rf_rev == 8)
		FUNC5(mac, 0x805, 0x3230);

	FUNC8(mac);

	if (sc->sc_bbp_id == BWI_BBPID_BCM4306 && sc->sc_bbp_pkg == 2) {
		FUNC1(mac, 0x429, 0x4000);
		FUNC1(mac, 0x4c3, 0x8000);
	}
}