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
struct thunder_mdio_softc {int /*<<< orphan*/  phy_desc_head; } ;
struct phy_desc {int lmacid; int /*<<< orphan*/ * ifp; int /*<<< orphan*/  miibus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  FUNC0 (struct thunder_mdio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct thunder_mdio_softc*) ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_THUNDER_MDIO ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct phy_desc*,int /*<<< orphan*/ ) ; 
 struct thunder_mdio_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_desc*,int /*<<< orphan*/ ) ; 
 struct phy_desc* FUNC6 (struct thunder_mdio_softc*,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct phy_desc* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  phy_desc_list ; 
 int /*<<< orphan*/  thunder_ifmedia_change_stub ; 
 int /*<<< orphan*/  thunder_ifmedia_status_stub ; 

__attribute__((used)) static int
FUNC11(device_t dev, int lmacid, int phy)
{
	struct thunder_mdio_softc *sc;
	struct phy_desc *pd;
	int err;

	sc = FUNC3(dev);

	FUNC0(sc);
	pd = FUNC6(sc, lmacid);
	FUNC1(sc);
	if (pd == NULL) {
		pd = FUNC9(sizeof(*pd), M_THUNDER_MDIO, (M_NOWAIT | M_ZERO));
		if (pd == NULL)
			return (ENOMEM);
		pd->ifp = FUNC7(IFT_ETHER);
		if (pd->ifp == NULL) {
			FUNC5(pd, M_THUNDER_MDIO);
			return (ENOMEM);
		}
		pd->lmacid = lmacid;
	}

	err = FUNC10(dev, &pd->miibus, pd->ifp,
	    thunder_ifmedia_change_stub, thunder_ifmedia_status_stub,
	    BMSR_DEFCAPMASK, phy, MII_OFFSET_ANY, 0);

	if (err != 0) {
		FUNC4(dev, "Could not attach PHY%d\n", phy);
		FUNC8(pd->ifp);
		FUNC5(pd, M_THUNDER_MDIO);
		return (ENXIO);
	}

	FUNC0(sc);
	FUNC2(&sc->phy_desc_head, pd, phy_desc_list);
	FUNC1(sc);

	return (0);
}