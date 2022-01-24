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
struct axe_softc {int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AXE_CMD_MII_OPMODE_HW ; 
 int /*<<< orphan*/  AXE_CMD_MII_OPMODE_SW ; 
 int /*<<< orphan*/  AXE_CMD_MII_READ_REG ; 
 scalar_t__ FUNC0 (struct axe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct axe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct axe_softc*) ; 
 int BMSR_EXTCAP ; 
 int MII_BMSR ; 
 int /*<<< orphan*/  FUNC3 (struct axe_softc*,int /*<<< orphan*/ ,int,int,int*) ; 
 struct axe_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(device_t dev, int phy, int reg)
{
	struct axe_softc *sc = FUNC4(dev);
	uint16_t val;
	int locked;

	locked = FUNC6(&sc->sc_mtx);
	if (!locked)
		FUNC1(sc);

	FUNC3(sc, AXE_CMD_MII_OPMODE_SW, 0, 0, NULL);
	FUNC3(sc, AXE_CMD_MII_READ_REG, reg, phy, &val);
	FUNC3(sc, AXE_CMD_MII_OPMODE_HW, 0, 0, NULL);

	val = FUNC5(val);
	if (FUNC0(sc) && reg == MII_BMSR) {
		/*
		 * BMSR of AX88772 indicates that it supports extended
		 * capability but the extended status register is
		 * revered for embedded ethernet PHY. So clear the
		 * extended capability bit of BMSR.
		 */
		val &= ~BMSR_EXTCAP;
	}

	if (!locked)
		FUNC2(sc);
	return (val);
}