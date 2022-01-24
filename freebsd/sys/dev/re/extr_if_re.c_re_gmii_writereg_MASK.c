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
 int FUNC0 (struct rl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rl_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  RL_PHYAR ; 
 int RL_PHYAR_BUSY ; 
 int RL_PHYAR_PHYDATA ; 
 int RL_PHY_TIMEOUT ; 
 struct rl_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev, int phy, int reg, int data)
{
	struct rl_softc		*sc;
	u_int32_t		rval;
	int			i;

	sc = FUNC3(dev);

	FUNC1(sc, RL_PHYAR, (reg << 16) |
	    (data & RL_PHYAR_PHYDATA) | RL_PHYAR_BUSY);

	for (i = 0; i < RL_PHY_TIMEOUT; i++) {
		rval = FUNC0(sc, RL_PHYAR);
		if (!(rval & RL_PHYAR_BUSY))
			break;
		FUNC2(25);
	}

	if (i == RL_PHY_TIMEOUT) {
		FUNC4(sc->rl_dev, "PHY write failed\n");
		return (0);
	}

	/*
	 * Controller requires a 20us delay to process next MDIO request.
	 */
	FUNC2(20);

	return (0);
}