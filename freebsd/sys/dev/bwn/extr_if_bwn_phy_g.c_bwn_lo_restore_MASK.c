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
struct bwn_phy_g {int pg_pga_gain; } ;
struct bwn_phy {int rev; scalar_t__ type; int rf_ver; int rf_rev; struct bwn_phy_g phy_g; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;
struct bwn_lo_g_value {int phy_pgactl; int phy_cck2; int phy_syncctl; int phy_dacctl; int rf2; int phy_cck0; int phy_cck1; int phy_analogover; int phy_analogoverval; int phy_classctl; int phy_rfover; int phy_rfoverval; int phy_cck3; int phy_crs0; int phy_lomask; int phy_extg; int phy_dacctl_hwpctl; int phy_cck4; int phy_hpwr_tssictl; int /*<<< orphan*/  old_channel; int /*<<< orphan*/  reg1; int /*<<< orphan*/  rf1; int /*<<< orphan*/  rf0; int /*<<< orphan*/  reg0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwn_phy*) ; 
 scalar_t__ BWN_PHYTYPE_B ; 
 scalar_t__ BWN_PHYTYPE_G ; 
 int /*<<< orphan*/  BWN_PHY_ANALOGOVER ; 
 int /*<<< orphan*/  BWN_PHY_ANALOGOVERVAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  BWN_PHY_CLASSCTL ; 
 int /*<<< orphan*/  BWN_PHY_CRS0 ; 
 int /*<<< orphan*/  BWN_PHY_DACCTL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  BWN_PHY_HPWR_TSSICTL ; 
 int /*<<< orphan*/  BWN_PHY_LO_MASK ; 
 int /*<<< orphan*/  BWN_PHY_PGACTL ; 
 int /*<<< orphan*/  BWN_PHY_RFOVER ; 
 int /*<<< orphan*/  BWN_PHY_RFOVERVAL ; 
 int /*<<< orphan*/  BWN_PHY_SYNCCTL ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_mac*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC9 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC10(struct bwn_mac *mac, struct bwn_lo_g_value *sav)
{
	struct bwn_phy *phy = &mac->mac_phy;
	struct bwn_phy_g *pg = &phy->phy_g;
	uint16_t tmp;

	if (phy->rev >= 2) {
		FUNC3(mac, BWN_PHY_PGACTL, 0xe300);
		tmp = (pg->pg_pga_gain << 8);
		FUNC3(mac, BWN_PHY_RFOVERVAL, tmp | 0xa0);
		FUNC7(5);
		FUNC3(mac, BWN_PHY_RFOVERVAL, tmp | 0xa2);
		FUNC7(2);
		FUNC3(mac, BWN_PHY_RFOVERVAL, tmp | 0xa3);
	} else {
		tmp = (pg->pg_pga_gain | 0xefa0);
		FUNC3(mac, BWN_PHY_PGACTL, tmp);
	}
	if (phy->type == BWN_PHYTYPE_G) {
		if (phy->rev >= 3)
			FUNC3(mac, FUNC1(0x2e), 0xc078);
		else
			FUNC3(mac, FUNC1(0x2e), 0x8078);
		if (phy->rev >= 2)
			FUNC3(mac, FUNC1(0x2f), 0x0202);
		else
			FUNC3(mac, FUNC1(0x2f), 0x0101);
	}
	FUNC6(mac, 0x3f4, sav->reg0);
	FUNC3(mac, BWN_PHY_PGACTL, sav->phy_pgactl);
	FUNC3(mac, FUNC1(0x2a), sav->phy_cck2);
	FUNC3(mac, BWN_PHY_SYNCCTL, sav->phy_syncctl);
	FUNC3(mac, BWN_PHY_DACCTL, sav->phy_dacctl);
	FUNC5(mac, 0x43, sav->rf0);
	FUNC5(mac, 0x7a, sav->rf1);
	if (!FUNC0(phy)) {
		tmp = sav->rf2;
		FUNC4(mac, 0x52, 0xff0f, tmp);
	}
	FUNC6(mac, 0x3e2, sav->reg1);
	if (phy->type == BWN_PHYTYPE_B &&
	    phy->rf_ver == 0x2050 && phy->rf_rev <= 5) {
		FUNC3(mac, FUNC1(0x30), sav->phy_cck0);
		FUNC3(mac, FUNC1(0x06), sav->phy_cck1);
	}
	if (phy->rev >= 2) {
		FUNC3(mac, BWN_PHY_ANALOGOVER, sav->phy_analogover);
		FUNC3(mac, BWN_PHY_ANALOGOVERVAL,
			      sav->phy_analogoverval);
		FUNC3(mac, BWN_PHY_CLASSCTL, sav->phy_classctl);
		FUNC3(mac, BWN_PHY_RFOVER, sav->phy_rfover);
		FUNC3(mac, BWN_PHY_RFOVERVAL, sav->phy_rfoverval);
		FUNC3(mac, FUNC1(0x3e), sav->phy_cck3);
		FUNC3(mac, BWN_PHY_CRS0, sav->phy_crs0);
	}
	if (FUNC8(mac)) {
		tmp = (sav->phy_lomask & 0xbfff);
		FUNC3(mac, BWN_PHY_LO_MASK, tmp);
		FUNC3(mac, FUNC2(0x01), sav->phy_extg);
		FUNC3(mac, BWN_PHY_DACCTL, sav->phy_dacctl_hwpctl);
		FUNC3(mac, FUNC1(0x14), sav->phy_cck4);
		FUNC3(mac, BWN_PHY_HPWR_TSSICTL, sav->phy_hpwr_tssictl);
	}
	FUNC9(mac, sav->old_channel, 1);
}