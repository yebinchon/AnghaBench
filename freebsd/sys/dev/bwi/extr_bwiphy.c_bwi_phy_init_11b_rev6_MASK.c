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
typedef  int u_int ;
struct bwi_softc {int sc_card_flags; } ;
struct bwi_rf {int rf_rev; int rf_curchan; } ;
struct bwi_phy {scalar_t__ phy_mode; int phy_version; } ;
struct bwi_mac {struct bwi_phy mac_phy; struct bwi_rf mac_rf; struct bwi_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_BBP_ATTEN ; 
 int /*<<< orphan*/  BWI_BBP_ATTEN_MAGIC2 ; 
 int BWI_CARD_F_ALT_IQ ; 
 int BWI_CARD_F_SW_NRSSI ; 
 int /*<<< orphan*/  BWI_HFLAG_MAGIC1 ; 
 int /*<<< orphan*/  BWI_PHY_MAGIC_REG1 ; 
 int /*<<< orphan*/  BWI_PHY_MAGIC_REG1_VAL2 ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_mac*,int /*<<< orphan*/ ) ; 
 scalar_t__ IEEE80211_MODE_11B ; 
 scalar_t__ IEEE80211_MODE_11G ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwi_mac*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bwi_mac*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC11 (struct bwi_mac*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC13 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC14 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC15 (struct bwi_mac*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct bwi_mac*) ; 

__attribute__((used)) static void
FUNC17(struct bwi_mac *mac)
{
	struct bwi_softc *sc = mac->mac_sc;
	struct bwi_rf *rf = &mac->mac_rf;
	struct bwi_phy *phy = &mac->mac_phy;
	uint16_t val, ofs;
	u_int orig_chan;

	FUNC6(mac, 0x3e, 0x817a);
	FUNC8(mac, 0x7a, 0x58);

	if (rf->rf_rev == 4 || rf->rf_rev == 5) {
		FUNC9(mac, 0x51, 0x37);
		FUNC9(mac, 0x52, 0x70);
		FUNC9(mac, 0x53, 0xb3);
		FUNC9(mac, 0x54, 0x9b);
		FUNC9(mac, 0x5a, 0x88);
		FUNC9(mac, 0x5b, 0x88);
		FUNC9(mac, 0x5d, 0x88);
		FUNC9(mac, 0x5e, 0x88);
		FUNC9(mac, 0x7d, 0x88);
		FUNC2(mac, BWI_HFLAG_MAGIC1);
	} else if (rf->rf_rev == 8) {
		FUNC9(mac, 0x51, 0);
		FUNC9(mac, 0x52, 0x40);
		FUNC9(mac, 0x53, 0xb7);
		FUNC9(mac, 0x54, 0x98);
		FUNC9(mac, 0x5a, 0x88);
		FUNC9(mac, 0x5b, 0x6b);
		FUNC9(mac, 0x5c, 0xf);
		if (sc->sc_card_flags & BWI_CARD_F_ALT_IQ) {
			FUNC9(mac, 0x5d, 0xfa);
			FUNC9(mac, 0x5e, 0xd8);
		} else {
			FUNC9(mac, 0x5d, 0xf5);
			FUNC9(mac, 0x5e, 0xb8);
		}
		FUNC9(mac, 0x73, 0x3);
		FUNC9(mac, 0x7d, 0xa8);
		FUNC9(mac, 0x7c, 0x1);
		FUNC9(mac, 0x7e, 0x8);
	}

	val = 0x1e1f;
	for (ofs = 0x88; ofs < 0x98; ++ofs) {
		FUNC6(mac, ofs, val);
		val -= 0x202;
	}

	val = 0x3e3f;
	for (ofs = 0x98; ofs < 0xa8; ++ofs) {
		FUNC6(mac, ofs, val);
		val -= 0x202;
	}

	val = 0x2120;
	for (ofs = 0xa8; ofs < 0xc8; ++ofs) {
		FUNC6(mac, ofs, (val & 0x3f3f));
		val += 0x202;

		/* XXX: delay 10 us to avoid PCI parity errors with BCM4318 */
		FUNC1(10);
	}

	if (phy->phy_mode == IEEE80211_MODE_11G) {
		FUNC8(mac, 0x7a, 0x20);
		FUNC8(mac, 0x51, 0x4);
		FUNC5(mac, 0x802, 0x100);
		FUNC5(mac, 0x42b, 0x2000);
		FUNC6(mac, 0x5b, 0);
		FUNC6(mac, 0x5c, 0);
	}

	/* Force to channel 7 */
	orig_chan = rf->rf_curchan;
	if (orig_chan >= 8)
		FUNC15(mac, 1, 0);
	else
		FUNC15(mac, 13, 0);

	FUNC9(mac, 0x50, 0x20);
	FUNC9(mac, 0x50, 0x23);

	FUNC1(40);

	if (rf->rf_rev < 6 || rf->rf_rev == 8) {
		FUNC8(mac, 0x7c, 0x2);
		FUNC9(mac, 0x50, 0x20);
	}
	if (rf->rf_rev <= 2) {
		FUNC9(mac, 0x7c, 0x20);
		FUNC9(mac, 0x5a, 0x70);
		FUNC9(mac, 0x5b, 0x7b);
		FUNC9(mac, 0x5c, 0xb0);
	}

	FUNC7(mac, 0x7a, 0xf8, 0x7);

	FUNC15(mac, orig_chan, 0);

	FUNC6(mac, 0x14, 0x200);
	if (rf->rf_rev >= 6)
		FUNC6(mac, 0x2a, 0x88c2);
	else
		FUNC6(mac, 0x2a, 0x8ac0);
	FUNC6(mac, 0x38, 0x668);

	FUNC11(mac, NULL);

	if (rf->rf_rev <= 5) {
		FUNC4(mac, 0x5d, 0xff80, 0x3);
		if (rf->rf_rev <= 2)
			FUNC9(mac, 0x5d, 0xd);
	}

	if (phy->phy_version == 4) {
		FUNC0(sc, BWI_PHY_MAGIC_REG1, BWI_PHY_MAGIC_REG1_VAL2);
		FUNC3(mac, 0x61, 0xf000);
	} else {
		FUNC4(mac, 0x2, 0xffc0, 0x4);
	}

	if (phy->phy_mode == IEEE80211_MODE_11B) {
		FUNC0(sc, BWI_BBP_ATTEN, BWI_BBP_ATTEN_MAGIC2);
		FUNC6(mac, 0x16, 0x410);
		FUNC6(mac, 0x17, 0x820);
		FUNC6(mac, 0x62, 0x7);

		FUNC13(mac);
		FUNC14(mac);
		if (sc->sc_card_flags & BWI_CARD_F_SW_NRSSI) {
			FUNC12(mac);
			FUNC16(mac);
		}
		FUNC10(mac);
	} else {
		FUNC0(sc, BWI_BBP_ATTEN, 0);
	}
}