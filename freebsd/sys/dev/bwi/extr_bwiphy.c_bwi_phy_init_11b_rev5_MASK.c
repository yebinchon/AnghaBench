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
struct bwi_softc {scalar_t__ sc_pci_subvid; scalar_t__ sc_pci_subdid; } ;
struct bwi_rf {scalar_t__ rf_type; int rf_curchan; } ;
struct bwi_phy {int phy_version; int phy_flags; int phy_rev; } ;
struct bwi_mac {struct bwi_phy mac_phy; struct bwi_rf mac_rf; struct bwi_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_BPHY_CTRL ; 
 int /*<<< orphan*/  BWI_BPHY_CTRL_INIT ; 
 scalar_t__ BWI_PCI_SUBDEVICE_BU4306 ; 
 int BWI_PHY_F_LINKED ; 
 int /*<<< orphan*/  BWI_PHY_MAGIC_REG1 ; 
 int /*<<< orphan*/  BWI_PHY_MAGIC_REG1_VAL1 ; 
 int /*<<< orphan*/  BWI_RF_ANTDIV ; 
 scalar_t__ BWI_RF_T_BCM2050 ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ PCI_VENDOR_BROADCOM ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_mac*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bwi_mac*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct bwi_mac*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct bwi_mac *mac)
{
	struct bwi_softc *sc = mac->mac_sc;
	struct bwi_rf *rf = &mac->mac_rf;
	struct bwi_phy *phy = &mac->mac_phy;
	u_int orig_chan;

	if (phy->phy_version == 1)
		FUNC5(mac, 0x7a, 0x50);

	if (sc->sc_pci_subvid != PCI_VENDOR_BROADCOM &&
	    sc->sc_pci_subdid != BWI_PCI_SUBDEVICE_BU4306) {
		uint16_t ofs, val;

		val = 0x2120;
		for (ofs = 0xa8; ofs < 0xc7; ++ofs) {
			FUNC4(mac, ofs, val);
			val += 0x202;
		}
	}

	FUNC2(mac, 0x35, 0xf0ff, 0x700);

	if (rf->rf_type == BWI_RF_T_BCM2050)
		FUNC4(mac, 0x38, 0x667);

	if ((phy->phy_flags & BWI_PHY_F_LINKED) || phy->phy_rev >= 2) {
		if (rf->rf_type == BWI_RF_T_BCM2050) {
			FUNC5(mac, 0x7a, 0x20);
			FUNC5(mac, 0x51, 0x4);
		}

		FUNC1(sc, BWI_RF_ANTDIV, 0);

		FUNC3(mac, 0x802, 0x100);
		FUNC3(mac, 0x42b, 0x2000);
		FUNC4(mac, 0x1c, 0x186a);

		FUNC2(mac, 0x13, 0xff, 0x1900);
		FUNC2(mac, 0x35, 0xffc0, 0x64);
		FUNC2(mac, 0x5d, 0xff80, 0xa);
	}

	/* TODO: bad_frame_preempt? */

	if (phy->phy_version == 1) {
	    	FUNC4(mac, 0x26, 0xce00);
		FUNC4(mac, 0x21, 0x3763);
		FUNC4(mac, 0x22, 0x1bc3);
		FUNC4(mac, 0x23, 0x6f9);
		FUNC4(mac, 0x24, 0x37e);
	} else {
		FUNC4(mac, 0x26, 0xcc00);
	}
	FUNC4(mac, 0x30, 0xc6);

	FUNC1(sc, BWI_BPHY_CTRL, BWI_BPHY_CTRL_INIT);

	if (phy->phy_version == 1)
		FUNC4(mac, 0x20, 0x3e1c);
	else
		FUNC4(mac, 0x20, 0x301c);

	if (phy->phy_version == 0)
		FUNC1(sc, BWI_PHY_MAGIC_REG1, BWI_PHY_MAGIC_REG1_VAL1);

	/* Force to channel 7 */
	orig_chan = rf->rf_curchan;
	FUNC8(mac, 7, 0);

	if (rf->rf_type != BWI_RF_T_BCM2050) {
		FUNC6(mac, 0x75, 0x80);
		FUNC6(mac, 0x79, 0x81);
	}

	FUNC6(mac, 0x50, 0x20);
	FUNC6(mac, 0x50, 0x23);

	if (rf->rf_type == BWI_RF_T_BCM2050) {
		FUNC6(mac, 0x50, 0x20);
		FUNC6(mac, 0x5a, 0x70);
	}

	FUNC6(mac, 0x5b, 0x7b);
	FUNC6(mac, 0x5c, 0xb0);
	FUNC5(mac, 0x7a, 0x7);

	FUNC8(mac, orig_chan, 0);

	FUNC4(mac, 0x14, 0x80);
	FUNC4(mac, 0x32, 0xca);
	FUNC4(mac, 0x2a, 0x88a3);

	FUNC7(mac, NULL);

	if (rf->rf_type == BWI_RF_T_BCM2050)
		FUNC6(mac, 0x5d, 0xd);

	FUNC0(sc, BWI_PHY_MAGIC_REG1, 0xffc0, 0x4);
}