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
struct phy_desc {int /*<<< orphan*/  ifp; int /*<<< orphan*/  miibus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct thunder_mdio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct thunder_mdio_softc*) ; 
 int /*<<< orphan*/  M_THUNDER_MDIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct phy_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct thunder_mdio_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct phy_desc*,int /*<<< orphan*/ ) ; 
 struct phy_desc* FUNC7 (struct thunder_mdio_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  phy_desc_list ; 

__attribute__((used)) static int
FUNC9(device_t dev, int lmacid, int phy)
{
	struct thunder_mdio_softc *sc;
	struct phy_desc *pd;

	sc = FUNC5(dev);
	FUNC0(sc);

	pd = FUNC7(sc, lmacid);
	if (pd == NULL) {
		FUNC1(sc);
		return (EINVAL);
	}

	/* Remove this PHY descriptor from the list */
	FUNC2(&sc->phy_desc_head, pd, phy_desc_list);

	/* Detach miibus */
	FUNC3(dev);
	FUNC4(dev, pd->miibus);
	/* Free fake ifnet */
	FUNC8(pd->ifp);
	/* Free memory under phy descriptor */
	FUNC6(pd, M_THUNDER_MDIO);
	FUNC1(sc);

	return (0);
}