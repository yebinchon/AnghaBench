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
typedef  int u_int32_t ;
struct rl_softc {int /*<<< orphan*/  rl_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (struct rl_softc*,int) ; 
 int FUNC1 (struct rl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rl_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int RL_GMEDIASTAT ; 
 int /*<<< orphan*/  RL_PHYAR ; 
 int RL_PHYAR_BUSY ; 
 int RL_PHYAR_PHYDATA ; 
 int RL_PHY_TIMEOUT ; 
 struct rl_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC6(device_t dev, int phy, int reg)
{
	struct rl_softc		*sc;
	u_int32_t		rval;
	int			i;

	sc = FUNC4(dev);

	/* Let the rgephy driver read the GMEDIASTAT register */

	if (reg == RL_GMEDIASTAT) {
		rval = FUNC0(sc, RL_GMEDIASTAT);
		return (rval);
	}

	FUNC2(sc, RL_PHYAR, reg << 16);

	for (i = 0; i < RL_PHY_TIMEOUT; i++) {
		rval = FUNC1(sc, RL_PHYAR);
		if (rval & RL_PHYAR_BUSY)
			break;
		FUNC3(25);
	}

	if (i == RL_PHY_TIMEOUT) {
		FUNC5(sc->rl_dev, "PHY read failed\n");
		return (0);
	}

	/*
	 * Controller requires a 20us delay to process next MDIO request.
	 */
	FUNC3(20);

	return (rval & RL_PHYAR_PHYDATA);
}