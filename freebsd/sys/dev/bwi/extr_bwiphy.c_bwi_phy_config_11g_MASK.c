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
struct bwi_softc {int sc_pci_revid; int sc_card_flags; } ;
struct bwi_phy {int phy_rev; } ;
struct bwi_mac {struct bwi_phy mac_phy; struct bwi_softc* mac_sc; } ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int BWI_CARD_F_PA_GPIO9 ; 
 scalar_t__ FUNC0 (struct bwi_softc*) ; 
 scalar_t__ BWI_PHYTBL_DELAY ; 
 int BWI_PHYTBL_FREQ ; 
 int BWI_PHYTBL_NOISE ; 
 int BWI_PHYTBL_NOISE_SCALE ; 
 scalar_t__ BWI_PHYTBL_ROTOR ; 
 int BWI_PHYTBL_RSSI ; 
 int BWI_PHYTBL_SIGMA_SQ ; 
 int BWI_PHYTBL_WRSSI ; 
 int BWI_PHYTBL_WRSSI_REV1 ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_mac*,int,int,int) ; 
 int FUNC2 (struct bwi_mac*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwi_mac*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bwi_mac*) ; 
 int* bwi_phy_delay_11g_rev1 ; 
 int* bwi_phy_freq_11g_rev1 ; 
 int* bwi_phy_noise_11g ; 
 int* bwi_phy_noise_11g_rev1 ; 
 int* bwi_phy_noise_scale_11g ; 
 int* bwi_phy_noise_scale_11g_rev2 ; 
 int* bwi_phy_noise_scale_11g_rev7 ; 
 int* bwi_phy_rotor_11g_rev1 ; 
 int* bwi_phy_sigma_sq_11g_rev2 ; 
 int* bwi_phy_sigma_sq_11g_rev7 ; 
 int /*<<< orphan*/  FUNC7 (struct bwi_mac*,int,int const) ; 
 int /*<<< orphan*/  FUNC8 (struct bwi_mac*,scalar_t__,int) ; 
 int FUNC9 (int*) ; 

__attribute__((used)) static void
FUNC10(struct bwi_mac *mac)
{
	struct bwi_softc *sc = mac->mac_sc;
	struct bwi_phy *phy = &mac->mac_phy;
	const uint16_t *tbl;
	uint16_t wrd_ofs1, wrd_ofs2;
	int i, n;

	if (phy->phy_rev == 1) {
		FUNC4(mac, 0x406, 0x4f19);
		FUNC1(mac, 0x429, 0xfc3f, 0x340);
		FUNC4(mac, 0x42c, 0x5a);
		FUNC4(mac, 0x427, 0x1a);

		/* Fill frequency table */
		for (i = 0; i < FUNC9(bwi_phy_freq_11g_rev1); ++i) {
			FUNC7(mac, BWI_PHYTBL_FREQ + i,
					bwi_phy_freq_11g_rev1[i]);
		}

		/* Fill noise table */
		for (i = 0; i < FUNC9(bwi_phy_noise_11g_rev1); ++i) {
			FUNC7(mac, BWI_PHYTBL_NOISE + i,
					bwi_phy_noise_11g_rev1[i]);
		}

		/* Fill rotor table */
		for (i = 0; i < FUNC9(bwi_phy_rotor_11g_rev1); ++i) {
			/* NB: data length is 4 bytes */
			FUNC8(mac, BWI_PHYTBL_ROTOR + i,
					bwi_phy_rotor_11g_rev1[i]);
		}
	} else {
		FUNC5(mac, 0xba98, (int16_t)0x7654); /* XXX */

		if (phy->phy_rev == 2) {
			FUNC4(mac, 0x4c0, 0x1861);
			FUNC4(mac, 0x4c1, 0x271);
		} else if (phy->phy_rev > 2) {
			FUNC4(mac, 0x4c0, 0x98);
			FUNC4(mac, 0x4c1, 0x70);
			FUNC4(mac, 0x4c9, 0x80);
		}
		FUNC3(mac, 0x42b, 0x800);

		/* Fill RSSI table */
		for (i = 0; i < 64; ++i)
			FUNC7(mac, BWI_PHYTBL_RSSI + i, i);

		/* Fill noise table */
		for (i = 0; i < FUNC9(bwi_phy_noise_11g); ++i) {
			FUNC7(mac, BWI_PHYTBL_NOISE + i,
					bwi_phy_noise_11g[i]);
		}
	}

	/*
	 * Fill noise scale table
	 */
	if (phy->phy_rev <= 2) {
		tbl = bwi_phy_noise_scale_11g_rev2;
		n = FUNC9(bwi_phy_noise_scale_11g_rev2);
	} else if (phy->phy_rev >= 7 && (FUNC2(mac, 0x449) & 0x200)) {
		tbl = bwi_phy_noise_scale_11g_rev7;
		n = FUNC9(bwi_phy_noise_scale_11g_rev7);
	} else {
		tbl = bwi_phy_noise_scale_11g;
		n = FUNC9(bwi_phy_noise_scale_11g);
	}
	for (i = 0; i < n; ++i)
		FUNC7(mac, BWI_PHYTBL_NOISE_SCALE + i, tbl[i]);

	/*
	 * Fill sigma square table
	 */
	if (phy->phy_rev == 2) {
		tbl = bwi_phy_sigma_sq_11g_rev2;
		n = FUNC9(bwi_phy_sigma_sq_11g_rev2);
	} else if (phy->phy_rev > 2 && phy->phy_rev <= 8) {
		tbl = bwi_phy_sigma_sq_11g_rev7;
		n = FUNC9(bwi_phy_sigma_sq_11g_rev7);
	} else {
		tbl = NULL;
		n = 0;
	}
	for (i = 0; i < n; ++i)
		FUNC7(mac, BWI_PHYTBL_SIGMA_SQ + i, tbl[i]);

	if (phy->phy_rev == 1) {
		/* Fill delay table */
		for (i = 0; i < FUNC9(bwi_phy_delay_11g_rev1); ++i) {
			FUNC8(mac, BWI_PHYTBL_DELAY + i,
					bwi_phy_delay_11g_rev1[i]);
		}

		/* Fill WRSSI (Wide-Band RSSI) table */
		for (i = 4; i < 20; ++i)
			FUNC7(mac, BWI_PHYTBL_WRSSI_REV1 + i, 0x20);

		FUNC6(mac);

		wrd_ofs1 = 0x5001;
		wrd_ofs2 = 0x5002;
	} else {
		/* Fill WRSSI (Wide-Band RSSI) table */
		for (i = 0; i < 0x20; ++i)
			FUNC7(mac, BWI_PHYTBL_WRSSI + i, 0x820);

		FUNC6(mac);

		FUNC2(mac, 0x400);	/* Dummy read */
		FUNC4(mac, 0x403, 0x1000);
		FUNC7(mac, 0x3c02, 0xf);
		FUNC7(mac, 0x3c03, 0x14);

		wrd_ofs1 = 0x401;
		wrd_ofs2 = 0x402;
	}

	if (!(FUNC0(sc) && sc->sc_pci_revid == 0x17)) {
		FUNC7(mac, wrd_ofs1, 0x2);
		FUNC7(mac, wrd_ofs2, 0x1);
	}

	/* phy->phy_flags & BWI_PHY_F_LINKED ? */
	if (sc->sc_card_flags & BWI_CARD_F_PA_GPIO9)
		FUNC4(mac, 0x46e, 0x3cf);
}