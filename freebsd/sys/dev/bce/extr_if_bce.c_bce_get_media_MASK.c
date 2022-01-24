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
typedef  scalar_t__ u32 ;
struct bce_softc {int bce_phy_addr; int bce_phy_flags; int /*<<< orphan*/  bce_flags; int /*<<< orphan*/  bce_dev; } ;

/* Variables and functions */
 int FUNC0 (struct bce_softc*) ; 
 int BCE_CHIP_BOND_ID_SERDES_BIT ; 
 scalar_t__ FUNC1 (struct bce_softc*) ; 
 scalar_t__ BCE_CHIP_NUM_5706 ; 
 scalar_t__ BCE_CHIP_NUM_5708 ; 
 scalar_t__ BCE_CHIP_NUM_5709 ; 
 int BCE_INFO_LOAD ; 
 int BCE_INFO_PHY ; 
 int /*<<< orphan*/  BCE_MISC_DUAL_MEDIA_CTRL ; 
 scalar_t__ BCE_MISC_DUAL_MEDIA_CTRL_BOND_ID ; 
 scalar_t__ BCE_MISC_DUAL_MEDIA_CTRL_BOND_ID_C ; 
 scalar_t__ BCE_MISC_DUAL_MEDIA_CTRL_BOND_ID_S ; 
 scalar_t__ BCE_MISC_DUAL_MEDIA_CTRL_PHY_CTRL ; 
 scalar_t__ BCE_MISC_DUAL_MEDIA_CTRL_PHY_CTRL_STRAP ; 
 scalar_t__ BCE_MISC_DUAL_MEDIA_CTRL_STRAP_OVERRIDE ; 
 int /*<<< orphan*/  BCE_NO_WOL_FLAG ; 
 int BCE_PHY_2_5G_CAPABLE_FLAG ; 
 int BCE_PHY_CRC_FIX_FLAG ; 
 int BCE_PHY_IEEE_CLAUSE_45_FLAG ; 
 int BCE_PHY_SERDES_FLAG ; 
 int /*<<< orphan*/  BCE_SHARED_HW_CFG_CONFIG ; 
 scalar_t__ BCE_SHARED_HW_CFG_PHY_2_5G ; 
 int /*<<< orphan*/  BCE_VERBOSE_PHY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bce_softc*,int,char*,...) ; 
 scalar_t__ FUNC5 (struct bce_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct bce_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct bce_softc *sc)
{
	u32 val;

	FUNC2(BCE_VERBOSE_PHY);

	/* Assume PHY address for copper controllers. */
	sc->bce_phy_addr = 1;

	if (FUNC1(sc) == BCE_CHIP_NUM_5709) {
 		u32 val = FUNC5(sc, BCE_MISC_DUAL_MEDIA_CTRL);
		u32 bond_id = val & BCE_MISC_DUAL_MEDIA_CTRL_BOND_ID;
		u32 strap;

		/*
		 * The BCM5709S is software configurable
		 * for Copper or SerDes operation.
		 */
		if (bond_id == BCE_MISC_DUAL_MEDIA_CTRL_BOND_ID_C) {
			FUNC4(sc, BCE_INFO_LOAD, "5709 bonded "
			    "for copper.\n");
			goto bce_get_media_exit;
		} else if (bond_id == BCE_MISC_DUAL_MEDIA_CTRL_BOND_ID_S) {
			FUNC4(sc, BCE_INFO_LOAD, "5709 bonded "
			    "for dual media.\n");
			sc->bce_phy_flags |= BCE_PHY_SERDES_FLAG;
			goto bce_get_media_exit;
		}

		if (val & BCE_MISC_DUAL_MEDIA_CTRL_STRAP_OVERRIDE)
			strap = (val &
			    BCE_MISC_DUAL_MEDIA_CTRL_PHY_CTRL) >> 21;
		else
			strap = (val &
			    BCE_MISC_DUAL_MEDIA_CTRL_PHY_CTRL_STRAP) >> 8;

		if (FUNC7(sc->bce_dev) == 0) {
			switch (strap) {
			case 0x4:
			case 0x5:
			case 0x6:
				FUNC4(sc, BCE_INFO_LOAD,
				    "BCM5709 s/w configured for SerDes.\n");
				sc->bce_phy_flags |= BCE_PHY_SERDES_FLAG;
				break;
			default:
				FUNC4(sc, BCE_INFO_LOAD,
				    "BCM5709 s/w configured for Copper.\n");
				break;
			}
		} else {
			switch (strap) {
			case 0x1:
			case 0x2:
			case 0x4:
				FUNC4(sc, BCE_INFO_LOAD,
				    "BCM5709 s/w configured for SerDes.\n");
				sc->bce_phy_flags |= BCE_PHY_SERDES_FLAG;
				break;
			default:
				FUNC4(sc, BCE_INFO_LOAD,
				    "BCM5709 s/w configured for Copper.\n");
				break;
			}
		}

	} else if (FUNC0(sc) & BCE_CHIP_BOND_ID_SERDES_BIT)
		sc->bce_phy_flags |= BCE_PHY_SERDES_FLAG;

	if (sc->bce_phy_flags & BCE_PHY_SERDES_FLAG) {

		sc->bce_flags |= BCE_NO_WOL_FLAG;

		if (FUNC1(sc) == BCE_CHIP_NUM_5709)
			sc->bce_phy_flags |= BCE_PHY_IEEE_CLAUSE_45_FLAG;

		if (FUNC1(sc) != BCE_CHIP_NUM_5706) {
			/* 5708S/09S/16S use a separate PHY for SerDes. */
			sc->bce_phy_addr = 2;

			val = FUNC6(sc, BCE_SHARED_HW_CFG_CONFIG);
			if (val & BCE_SHARED_HW_CFG_PHY_2_5G) {
				sc->bce_phy_flags |=
				    BCE_PHY_2_5G_CAPABLE_FLAG;
				FUNC4(sc, BCE_INFO_LOAD, "Found 2.5Gb "
				    "capable adapter\n");
			}
		}
	} else if ((FUNC1(sc) == BCE_CHIP_NUM_5706) ||
	    (FUNC1(sc) == BCE_CHIP_NUM_5708))
		sc->bce_phy_flags |= BCE_PHY_CRC_FIX_FLAG;

bce_get_media_exit:
	FUNC4(sc, (BCE_INFO_LOAD | BCE_INFO_PHY),
		"Using PHY address %d.\n", sc->bce_phy_addr);

	FUNC3(BCE_VERBOSE_PHY);
}