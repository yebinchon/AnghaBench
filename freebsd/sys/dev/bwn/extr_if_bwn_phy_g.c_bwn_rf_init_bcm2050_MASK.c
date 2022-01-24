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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct bwn_phy {scalar_t__ type; int rev; int analog; int rf_rev; scalar_t__ gmode; int /*<<< orphan*/  chan; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int BWN_CHANNEL_EXT ; 
 scalar_t__ FUNC1 (struct bwn_phy*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 scalar_t__ BWN_PHYTYPE_B ; 
 int /*<<< orphan*/  BWN_PHY_ANALOGOVER ; 
 int /*<<< orphan*/  BWN_PHY_ANALOGOVERVAL ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  BWN_PHY_CLASSCTL ; 
 int /*<<< orphan*/  BWN_PHY_CRS0 ; 
 int /*<<< orphan*/  BWN_PHY_LO_CTL ; 
 int /*<<< orphan*/  BWN_PHY_LO_LEAKAGE ; 
 int /*<<< orphan*/  BWN_PHY_LO_MASK ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BWN_PHY_PGACTL ; 
 int BWN_PHY_RADIO ; 
 int FUNC5 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BWN_PHY_RFOVER ; 
 int /*<<< orphan*/  BWN_PHY_RFOVERVAL ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  BWN_PHY_SYNCCTL ; 
 int /*<<< orphan*/  FUNC8 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct bwn_mac*,int) ; 
 int FUNC10 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct bwn_mac*,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct bwn_mac*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint16_t
FUNC18(struct bwn_mac *mac)
{
	struct bwn_phy *phy = &mac->mac_phy;
	uint32_t tmp1 = 0, tmp2 = 0;
	uint16_t rcc, i, j, pgactl, cck0, cck1, cck2, cck3, rfover, rfoverval,
	    analogover, analogoverval, crs0, classctl, lomask, loctl, syncctl,
	    radio0, radio1, radio2, reg0, reg1, reg2, radio78, reg, index;
	static const uint8_t rcc_table[] = {
		0x02, 0x03, 0x01, 0x0f,
		0x06, 0x07, 0x05, 0x0f,
		0x0a, 0x0b, 0x09, 0x0f,
		0x0e, 0x0f, 0x0d, 0x0f,
	};

	loctl = lomask = reg0 = classctl = crs0 = analogoverval = analogover =
	    rfoverval = rfover = cck3 = 0;
	radio0 = FUNC10(mac, 0x43);
	radio1 = FUNC10(mac, 0x51);
	radio2 = FUNC10(mac, 0x52);
	pgactl = FUNC5(mac, BWN_PHY_PGACTL);
	cck0 = FUNC5(mac, FUNC3(0x5a));
	cck1 = FUNC5(mac, FUNC3(0x59));
	cck2 = FUNC5(mac, FUNC3(0x58));

	if (phy->type == BWN_PHYTYPE_B) {
		cck3 = FUNC5(mac, FUNC3(0x30));
		reg0 = FUNC9(mac, 0x3ec);

		FUNC8(mac, FUNC3(0x30), 0xff);
		FUNC14(mac, 0x3ec, 0x3f3f);
	} else if (phy->gmode || phy->rev >= 2) {
		rfover = FUNC5(mac, BWN_PHY_RFOVER);
		rfoverval = FUNC5(mac, BWN_PHY_RFOVERVAL);
		analogover = FUNC5(mac, BWN_PHY_ANALOGOVER);
		analogoverval = FUNC5(mac, BWN_PHY_ANALOGOVERVAL);
		crs0 = FUNC5(mac, BWN_PHY_CRS0);
		classctl = FUNC5(mac, BWN_PHY_CLASSCTL);

		FUNC6(mac, BWN_PHY_ANALOGOVER, 0x0003);
		FUNC4(mac, BWN_PHY_ANALOGOVERVAL, 0xfffc);
		FUNC4(mac, BWN_PHY_CRS0, 0x7fff);
		FUNC4(mac, BWN_PHY_CLASSCTL, 0xfffc);
		if (FUNC1(phy)) {
			lomask = FUNC5(mac, BWN_PHY_LO_MASK);
			loctl = FUNC5(mac, BWN_PHY_LO_CTL);
			if (phy->rev >= 3)
				FUNC8(mac, BWN_PHY_LO_MASK, 0xc020);
			else
				FUNC8(mac, BWN_PHY_LO_MASK, 0x8020);
			FUNC8(mac, BWN_PHY_LO_CTL, 0);
		}

		FUNC8(mac, BWN_PHY_RFOVERVAL,
		    FUNC16(mac, BWN_PHY_RFOVERVAL,
			FUNC2(0, 1, 1)));
		FUNC8(mac, BWN_PHY_RFOVER,
		    FUNC16(mac, BWN_PHY_RFOVER, 0));
	}
	FUNC14(mac, 0x3e2, FUNC9(mac, 0x3e2) | 0x8000);

	syncctl = FUNC5(mac, BWN_PHY_SYNCCTL);
	FUNC4(mac, BWN_PHY_SYNCCTL, 0xff7f);
	reg1 = FUNC9(mac, 0x3e6);
	reg2 = FUNC9(mac, 0x3f4);

	if (phy->analog == 0)
		FUNC14(mac, 0x03e6, 0x0122);
	else {
		if (phy->analog >= 2)
			FUNC7(mac, FUNC3(0x03), 0xffbf, 0x40);
		FUNC14(mac, BWN_CHANNEL_EXT,
		    (FUNC9(mac, BWN_CHANNEL_EXT) | 0x2000));
	}

	reg = FUNC10(mac, 0x60);
	index = (reg & 0x001e) >> 1;
	rcc = (((rcc_table[index] << 1) | (reg & 0x0001)) | 0x0020);

	if (phy->type == BWN_PHYTYPE_B)
		FUNC13(mac, 0x78, 0x26);
	if (phy->gmode || phy->rev >= 2) {
		FUNC8(mac, BWN_PHY_RFOVERVAL,
		    FUNC16(mac, BWN_PHY_RFOVERVAL,
			FUNC2(0, 1, 1)));
	}
	FUNC8(mac, BWN_PHY_PGACTL, 0xbfaf);
	FUNC8(mac, FUNC3(0x2b), 0x1403);
	if (phy->gmode || phy->rev >= 2) {
		FUNC8(mac, BWN_PHY_RFOVERVAL,
		    FUNC16(mac, BWN_PHY_RFOVERVAL,
			FUNC2(0, 0, 1)));
	}
	FUNC8(mac, BWN_PHY_PGACTL, 0xbfa0);
	FUNC11(mac, 0x51, 0x0004);
	if (phy->rf_rev == 8)
		FUNC13(mac, 0x43, 0x1f);
	else {
		FUNC13(mac, 0x52, 0);
		FUNC12(mac, 0x43, 0xfff0, 0x0009);
	}
	FUNC8(mac, FUNC3(0x58), 0);

	for (i = 0; i < 16; i++) {
		FUNC8(mac, FUNC3(0x5a), 0x0480);
		FUNC8(mac, FUNC3(0x59), 0xc810);
		FUNC8(mac, FUNC3(0x58), 0x000d);
		if (phy->gmode || phy->rev >= 2) {
			FUNC8(mac, BWN_PHY_RFOVERVAL,
			    FUNC16(mac,
				BWN_PHY_RFOVERVAL, FUNC2(1, 0, 1)));
		}
		FUNC8(mac, BWN_PHY_PGACTL, 0xafb0);
		FUNC15(10);
		if (phy->gmode || phy->rev >= 2) {
			FUNC8(mac, BWN_PHY_RFOVERVAL,
			    FUNC16(mac,
				BWN_PHY_RFOVERVAL, FUNC2(1, 0, 1)));
		}
		FUNC8(mac, BWN_PHY_PGACTL, 0xefb0);
		FUNC15(10);
		if (phy->gmode || phy->rev >= 2) {
			FUNC8(mac, BWN_PHY_RFOVERVAL,
			    FUNC16(mac,
				BWN_PHY_RFOVERVAL, FUNC2(1, 0, 0)));
		}
		FUNC8(mac, BWN_PHY_PGACTL, 0xfff0);
		FUNC15(20);
		tmp1 += FUNC5(mac, BWN_PHY_LO_LEAKAGE);
		FUNC8(mac, FUNC3(0x58), 0);
		if (phy->gmode || phy->rev >= 2) {
			FUNC8(mac, BWN_PHY_RFOVERVAL,
			    FUNC16(mac,
				BWN_PHY_RFOVERVAL, FUNC2(1, 0, 1)));
		}
		FUNC8(mac, BWN_PHY_PGACTL, 0xafb0);
	}
	FUNC15(10);

	FUNC8(mac, FUNC3(0x58), 0);
	tmp1++;
	tmp1 >>= 9;

	for (i = 0; i < 16; i++) {
		radio78 = (FUNC0(i) << 1) | 0x0020;
		FUNC13(mac, 0x78, radio78);
		FUNC15(10);
		for (j = 0; j < 16; j++) {
			FUNC8(mac, FUNC3(0x5a), 0x0d80);
			FUNC8(mac, FUNC3(0x59), 0xc810);
			FUNC8(mac, FUNC3(0x58), 0x000d);
			if (phy->gmode || phy->rev >= 2) {
				FUNC8(mac, BWN_PHY_RFOVERVAL,
				    FUNC16(mac,
					BWN_PHY_RFOVERVAL, FUNC2(1, 0, 1)));
			}
			FUNC8(mac, BWN_PHY_PGACTL, 0xafb0);
			FUNC15(10);
			if (phy->gmode || phy->rev >= 2) {
				FUNC8(mac, BWN_PHY_RFOVERVAL,
				    FUNC16(mac,
					BWN_PHY_RFOVERVAL, FUNC2(1, 0, 1)));
			}
			FUNC8(mac, BWN_PHY_PGACTL, 0xefb0);
			FUNC15(10);
			if (phy->gmode || phy->rev >= 2) {
				FUNC8(mac, BWN_PHY_RFOVERVAL,
				    FUNC16(mac,
					BWN_PHY_RFOVERVAL, FUNC2(1, 0, 0)));
			}
			FUNC8(mac, BWN_PHY_PGACTL, 0xfff0);
			FUNC15(10);
			tmp2 += FUNC5(mac, BWN_PHY_LO_LEAKAGE);
			FUNC8(mac, FUNC3(0x58), 0);
			if (phy->gmode || phy->rev >= 2) {
				FUNC8(mac, BWN_PHY_RFOVERVAL,
				    FUNC16(mac,
					BWN_PHY_RFOVERVAL, FUNC2(1, 0, 1)));
			}
			FUNC8(mac, BWN_PHY_PGACTL, 0xafb0);
		}
		tmp2++;
		tmp2 >>= 8;
		if (tmp1 < tmp2)
			break;
	}

	FUNC8(mac, BWN_PHY_PGACTL, pgactl);
	FUNC13(mac, 0x51, radio1);
	FUNC13(mac, 0x52, radio2);
	FUNC13(mac, 0x43, radio0);
	FUNC8(mac, FUNC3(0x5a), cck0);
	FUNC8(mac, FUNC3(0x59), cck1);
	FUNC8(mac, FUNC3(0x58), cck2);
	FUNC14(mac, 0x3e6, reg1);
	if (phy->analog != 0)
		FUNC14(mac, 0x3f4, reg2);
	FUNC8(mac, BWN_PHY_SYNCCTL, syncctl);
	FUNC17(mac, phy->chan);
	if (phy->type == BWN_PHYTYPE_B) {
		FUNC8(mac, FUNC3(0x30), cck3);
		FUNC14(mac, 0x3ec, reg0);
	} else if (phy->gmode) {
		FUNC14(mac, BWN_PHY_RADIO,
			    FUNC9(mac, BWN_PHY_RADIO)
			    & 0x7fff);
		FUNC8(mac, BWN_PHY_RFOVER, rfover);
		FUNC8(mac, BWN_PHY_RFOVERVAL, rfoverval);
		FUNC8(mac, BWN_PHY_ANALOGOVER, analogover);
		FUNC8(mac, BWN_PHY_ANALOGOVERVAL,
			      analogoverval);
		FUNC8(mac, BWN_PHY_CRS0, crs0);
		FUNC8(mac, BWN_PHY_CLASSCTL, classctl);
		if (FUNC1(phy)) {
			FUNC8(mac, BWN_PHY_LO_MASK, lomask);
			FUNC8(mac, BWN_PHY_LO_CTL, loctl);
		}
	}

	return ((i > 15) ? radio78 : rcc);
}