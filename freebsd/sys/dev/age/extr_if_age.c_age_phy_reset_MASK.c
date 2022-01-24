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
struct age_softc {int /*<<< orphan*/  age_phyaddr; int /*<<< orphan*/  age_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGE_GPHY_CTRL ; 
 int /*<<< orphan*/  ATPHY_CDTC ; 
 int /*<<< orphan*/  ATPHY_CDTS ; 
 int /*<<< orphan*/  ATPHY_DBG_ADDR ; 
 int /*<<< orphan*/  ATPHY_DBG_DATA ; 
 int BMCR_AUTOEN ; 
 int BMCR_RESET ; 
 int BMCR_STARTNEG ; 
 int /*<<< orphan*/  FUNC0 (struct age_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GPHY_CTRL_CLR ; 
 int /*<<< orphan*/  GPHY_CTRL_RST ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int PHY_CDTC_ENB ; 
 int PHY_CDTC_POFF ; 
 int PHY_CDTS_STAT_MASK ; 
 int PHY_CDTS_STAT_OPEN ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct age_softc *sc)
{
	uint16_t reg, pn;
	int i, linkup;

	/* Reset PHY. */
	FUNC0(sc, AGE_GPHY_CTRL, GPHY_CTRL_RST);
	FUNC1(2000);
	FUNC0(sc, AGE_GPHY_CTRL, GPHY_CTRL_CLR);
	FUNC1(2000);

#define	ATPHY_DBG_ADDR		0x1D
#define	ATPHY_DBG_DATA		0x1E
#define	ATPHY_CDTC		0x16
#define	PHY_CDTC_ENB		0x0001
#define	PHY_CDTC_POFF		8
#define	ATPHY_CDTS		0x1C
#define	PHY_CDTS_STAT_OK	0x0000
#define	PHY_CDTS_STAT_SHORT	0x0100
#define	PHY_CDTS_STAT_OPEN	0x0200
#define	PHY_CDTS_STAT_INVAL	0x0300
#define	PHY_CDTS_STAT_MASK	0x0300

	/* Check power saving mode. Magic from Linux. */
	FUNC3(sc->age_dev, sc->age_phyaddr, MII_BMCR, BMCR_RESET);
	for (linkup = 0, pn = 0; pn < 4; pn++) {
		FUNC3(sc->age_dev, sc->age_phyaddr, ATPHY_CDTC,
		    (pn << PHY_CDTC_POFF) | PHY_CDTC_ENB);
		for (i = 200; i > 0; i--) {
			FUNC1(1000);
			reg = FUNC2(sc->age_dev, sc->age_phyaddr,
			    ATPHY_CDTC);
			if ((reg & PHY_CDTC_ENB) == 0)
				break;
		}
		FUNC1(1000);
		reg = FUNC2(sc->age_dev, sc->age_phyaddr,
		    ATPHY_CDTS);
		if ((reg & PHY_CDTS_STAT_MASK) != PHY_CDTS_STAT_OPEN) {
			linkup++;
			break;
		}
	}
	FUNC3(sc->age_dev, sc->age_phyaddr, MII_BMCR,
	    BMCR_RESET | BMCR_AUTOEN | BMCR_STARTNEG);
	if (linkup == 0) {
		FUNC3(sc->age_dev, sc->age_phyaddr,
		    ATPHY_DBG_ADDR, 0);
		FUNC3(sc->age_dev, sc->age_phyaddr,
		    ATPHY_DBG_DATA, 0x124E);
		FUNC3(sc->age_dev, sc->age_phyaddr,
		    ATPHY_DBG_ADDR, 1);
		reg = FUNC2(sc->age_dev, sc->age_phyaddr,
		    ATPHY_DBG_DATA);
		FUNC3(sc->age_dev, sc->age_phyaddr,
		    ATPHY_DBG_DATA, reg | 0x03);
		/* XXX */
		FUNC1(1500 * 1000);
		FUNC3(sc->age_dev, sc->age_phyaddr,
		    ATPHY_DBG_ADDR, 0);
		FUNC3(sc->age_dev, sc->age_phyaddr,
		    ATPHY_DBG_DATA, 0x024E);
    }

#undef	ATPHY_DBG_ADDR
#undef	ATPHY_DBG_DATA
#undef	ATPHY_CDTC
#undef	PHY_CDTC_ENB
#undef	PHY_CDTC_POFF
#undef	ATPHY_CDTS
#undef	PHY_CDTS_STAT_OK
#undef	PHY_CDTS_STAT_SHORT
#undef	PHY_CDTS_STAT_OPEN
#undef	PHY_CDTS_STAT_INVAL
#undef	PHY_CDTS_STAT_MASK
}