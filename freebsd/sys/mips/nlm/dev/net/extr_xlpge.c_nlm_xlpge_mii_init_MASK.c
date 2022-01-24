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
struct nlm_xlpge_softc {int /*<<< orphan*/ * mii_bus; int /*<<< orphan*/  phy_addr; int /*<<< orphan*/  xlpge_if; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xlpge_mediachange ; 
 int /*<<< orphan*/  xlpge_mediastatus ; 

__attribute__((used)) static void
FUNC2(device_t dev, struct nlm_xlpge_softc *sc)
{
	int error;

	error = FUNC1(dev, &sc->mii_bus, sc->xlpge_if,
			xlpge_mediachange, xlpge_mediastatus,
			BMSR_DEFCAPMASK, sc->phy_addr, MII_OFFSET_ANY, 0);

	if (error) {
		FUNC0(dev, "attaching PHYs failed\n");
		sc->mii_bus = NULL;
	}

	if (sc->mii_bus != NULL) {
		/* enable MDIO interrupts in the PHY */
		/* XXXJC: TODO */
	}
}