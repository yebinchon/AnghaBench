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
struct atse_softc {int atse_phy_addr; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atse_softc*,int,int) ; 
 struct atse_softc* FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(device_t dev, int phy, int reg, int data)
{
	struct atse_softc *sc;

	sc = FUNC1(dev);

	/*
	 * We currently do not support re-mapping of MDIO space on-the-fly
	 * but de-facto hard-code the phy#.
	 */
	if (phy != sc->atse_phy_addr) {
		return (0);
	}

	FUNC0(sc, reg, data);
	return (0);
}