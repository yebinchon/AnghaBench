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
struct timespec {int tv_nsec; int tv_sec; } ;
struct bwn_txpwr_loctl {int /*<<< orphan*/  txctl_measured_time; } ;
struct TYPE_2__ {int board_flags; } ;
struct bwn_softc {TYPE_1__ sc_board_info; } ;
struct bwn_phy_g {struct bwn_txpwr_loctl pg_loctl; } ;
struct bwn_phy {scalar_t__ type; int rf_ver; int rf_rev; int rev; struct bwn_phy_g phy_g; } ;
struct bwn_mac {struct bwn_softc* mac_sc; struct bwn_phy mac_phy; } ;
struct bwn_lo_g_value {int reg0; int reg1; int rf1; int phy_syncctl; int rf2; void* phy_cck1; void* phy_cck0; void* phy_dacctl; void* phy_cck2; void* phy_pgactl; void* rf0; void* phy_crs0; void* phy_cck3; void* phy_classctl; void* phy_rfoverval; void* phy_rfover; void* phy_analogoverval; void* phy_analogover; void* phy_hpwr_tssictl; void* phy_cck4; void* phy_dacctl_hwpctl; void* phy_extg; void* phy_lomask; } ;

/* Variables and functions */
 int BHND_BFL_EXTLNA ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_phy*) ; 
 scalar_t__ BWN_LO_TXCTL_EXPIRE ; 
 scalar_t__ BWN_PHYTYPE_B ; 
 scalar_t__ BWN_PHYTYPE_G ; 
 int BWN_PHY_ANALOGOVER ; 
 int BWN_PHY_ANALOGOVERVAL ; 
 int FUNC1 (int) ; 
 int BWN_PHY_CLASSCTL ; 
 int BWN_PHY_CRS0 ; 
 int BWN_PHY_DACCTL ; 
 int FUNC2 (int) ; 
 int BWN_PHY_HPWR_TSSICTL ; 
 int BWN_PHY_LO_MASK ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int,int) ; 
 int BWN_PHY_PGACTL ; 
 void* FUNC4 (struct bwn_mac*,int) ; 
 int BWN_PHY_RFOVER ; 
 int BWN_PHY_RFOVERVAL ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*,int,int) ; 
 int BWN_PHY_SYNCCTL ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_mac*,int,int) ; 
 int FUNC7 (struct bwn_mac*,int) ; 
 void* FUNC8 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC13 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC14 (struct bwn_mac*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct timespec*) ; 

__attribute__((used)) static void
FUNC17(struct bwn_mac *mac, struct bwn_lo_g_value *sav)
{
	struct bwn_phy *phy = &mac->mac_phy;
	struct bwn_phy_g *pg = &phy->phy_g;
	struct bwn_softc *sc = mac->mac_sc;
	struct bwn_txpwr_loctl *lo = &pg->pg_loctl;
	struct timespec ts;
	uint16_t tmp;

	if (FUNC12(mac)) {
		sav->phy_lomask = FUNC4(mac, BWN_PHY_LO_MASK);
		sav->phy_extg = FUNC4(mac, FUNC2(0x01));
		sav->phy_dacctl_hwpctl = FUNC4(mac, BWN_PHY_DACCTL);
		sav->phy_cck4 = FUNC4(mac, FUNC1(0x14));
		sav->phy_hpwr_tssictl = FUNC4(mac, BWN_PHY_HPWR_TSSICTL);

		FUNC5(mac, BWN_PHY_HPWR_TSSICTL, 0x100);
		FUNC5(mac, FUNC2(0x01), 0x40);
		FUNC5(mac, BWN_PHY_DACCTL, 0x40);
		FUNC5(mac, FUNC1(0x14), 0x200);
	}
	if (phy->type == BWN_PHYTYPE_B &&
	    phy->rf_ver == 0x2050 && phy->rf_rev < 6) {
		FUNC6(mac, FUNC1(0x16), 0x410);
		FUNC6(mac, FUNC1(0x17), 0x820);
	}
	if (phy->rev >= 2) {
		sav->phy_analogover = FUNC4(mac, BWN_PHY_ANALOGOVER);
		sav->phy_analogoverval =
		    FUNC4(mac, BWN_PHY_ANALOGOVERVAL);
		sav->phy_rfover = FUNC4(mac, BWN_PHY_RFOVER);
		sav->phy_rfoverval = FUNC4(mac, BWN_PHY_RFOVERVAL);
		sav->phy_classctl = FUNC4(mac, BWN_PHY_CLASSCTL);
		sav->phy_cck3 = FUNC4(mac, FUNC1(0x3e));
		sav->phy_crs0 = FUNC4(mac, BWN_PHY_CRS0);

		FUNC3(mac, BWN_PHY_CLASSCTL, 0xfffc);
		FUNC3(mac, BWN_PHY_CRS0, 0x7fff);
		FUNC5(mac, BWN_PHY_ANALOGOVER, 0x0003);
		FUNC3(mac, BWN_PHY_ANALOGOVERVAL, 0xfffc);
		if (phy->type == BWN_PHYTYPE_G) {
			if ((phy->rev >= 7) &&
			    (sc->sc_board_info.board_flags &
			     BHND_BFL_EXTLNA)) {
				FUNC6(mac, BWN_PHY_RFOVER, 0x933);
			} else {
				FUNC6(mac, BWN_PHY_RFOVER, 0x133);
			}
		} else {
			FUNC6(mac, BWN_PHY_RFOVER, 0);
		}
		FUNC6(mac, FUNC1(0x3e), 0);
	}
	sav->reg0 = FUNC7(mac, 0x3f4);
	sav->reg1 = FUNC7(mac, 0x3e2);
	sav->rf0 = FUNC8(mac, 0x43);
	sav->rf1 = FUNC8(mac, 0x7a);
	sav->phy_pgactl = FUNC4(mac, BWN_PHY_PGACTL);
	sav->phy_cck2 = FUNC4(mac, FUNC1(0x2a));
	sav->phy_syncctl = FUNC4(mac, BWN_PHY_SYNCCTL);
	sav->phy_dacctl = FUNC4(mac, BWN_PHY_DACCTL);

	if (!FUNC0(phy)) {
		sav->rf2 = FUNC8(mac, 0x52);
		sav->rf2 &= 0x00f0;
	}
	if (phy->type == BWN_PHYTYPE_B) {
		sav->phy_cck0 = FUNC4(mac, FUNC1(0x30));
		sav->phy_cck1 = FUNC4(mac, FUNC1(0x06));
		FUNC6(mac, FUNC1(0x30), 0x00ff);
		FUNC6(mac, FUNC1(0x06), 0x3f3f);
	} else {
		FUNC10(mac, 0x3e2, FUNC7(mac, 0x3e2)
			    | 0x8000);
	}
	FUNC10(mac, 0x3f4, FUNC7(mac, 0x3f4)
		    & 0xf000);

	tmp =
	    (phy->type == BWN_PHYTYPE_G) ? BWN_PHY_LO_MASK : FUNC1(0x2e);
	FUNC6(mac, tmp, 0x007f);

	tmp = sav->phy_syncctl;
	FUNC6(mac, BWN_PHY_SYNCCTL, tmp & 0xff7f);
	tmp = sav->rf1;
	FUNC9(mac, 0x007a, tmp & 0xfff0);

	FUNC6(mac, FUNC1(0x2a), 0x8a3);
	if (phy->type == BWN_PHYTYPE_G ||
	    (phy->type == BWN_PHYTYPE_B &&
	     phy->rf_ver == 0x2050 && phy->rf_rev >= 6)) {
		FUNC6(mac, FUNC1(0x2b), 0x1003);
	} else
		FUNC6(mac, FUNC1(0x2b), 0x0802);
	if (phy->rev >= 2)
		FUNC11(mac, 0, 1);
	FUNC14(mac, 6, 0);
	FUNC8(mac, 0x51);
	if (phy->type == BWN_PHYTYPE_G)
		FUNC6(mac, FUNC1(0x2f), 0);

	FUNC16(&ts);
	if (FUNC15(lo->txctl_measured_time,
	    (ts.tv_nsec / 1000000 + ts.tv_sec * 1000) - BWN_LO_TXCTL_EXPIRE))
		FUNC13(mac);

	if (phy->type == BWN_PHYTYPE_G && phy->rev >= 3)
		FUNC6(mac, BWN_PHY_LO_MASK, 0xc078);
	else {
		if (phy->type == BWN_PHYTYPE_B)
			FUNC6(mac, FUNC1(0x2e), 0x8078);
		else
			FUNC6(mac, BWN_PHY_LO_MASK, 0x8078);
	}
}