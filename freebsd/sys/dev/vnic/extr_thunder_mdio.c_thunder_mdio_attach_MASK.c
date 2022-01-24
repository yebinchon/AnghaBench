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
struct thunder_mdio_softc {int /*<<< orphan*/  phy_desc_head; int /*<<< orphan*/ * reg_base; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct thunder_mdio_softc*,char*) ; 
 int REG_BASE_RID ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SMI_EN ; 
 int /*<<< orphan*/  SMI_EN_EN ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 struct thunder_mdio_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct thunder_mdio_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(device_t dev)
{
	struct thunder_mdio_softc *sc;
	int rid;

	sc = FUNC3(dev);
	sc->dev = dev;

	/* Allocate memory resources */
	rid = REG_BASE_RID;
	sc->reg_base = FUNC2(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->reg_base == NULL) {
		FUNC4(dev, "Could not allocate memory\n");
		return (ENXIO);
	}

	FUNC1(&sc->phy_desc_head);
	FUNC0(sc, "ThunderX MDIO lock");

	/* Enable SMI/MDIO interface */
	FUNC5(sc, SMI_EN, SMI_EN_EN);

	return (0);
}