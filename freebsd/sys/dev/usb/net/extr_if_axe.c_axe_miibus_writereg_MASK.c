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
struct axe_softc {int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AXE_CMD_MII_OPMODE_HW ; 
 int /*<<< orphan*/  AXE_CMD_MII_OPMODE_SW ; 
 int /*<<< orphan*/  AXE_CMD_MII_WRITE_REG ; 
 int /*<<< orphan*/  FUNC0 (struct axe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct axe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct axe_softc*,int /*<<< orphan*/ ,int,int,int*) ; 
 struct axe_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev, int phy, int reg, int val)
{
	struct axe_softc *sc = FUNC3(dev);
	int locked;

	val = FUNC4(val);
	locked = FUNC5(&sc->sc_mtx);
	if (!locked)
		FUNC0(sc);

	FUNC2(sc, AXE_CMD_MII_OPMODE_SW, 0, 0, NULL);
	FUNC2(sc, AXE_CMD_MII_WRITE_REG, reg, phy, &val);
	FUNC2(sc, AXE_CMD_MII_OPMODE_HW, 0, 0, NULL);

	if (!locked)
		FUNC1(sc);
	return (0);
}