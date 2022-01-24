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
struct axge_softc {int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AXGE_ACCESS_PHY ; 
 int /*<<< orphan*/  FUNC0 (struct axge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct axge_softc*) ; 
 int FUNC2 (struct axge_softc*,int /*<<< orphan*/ ,int,int) ; 
 struct axge_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev, int phy, int reg)
{
	struct axge_softc *sc;
	uint16_t val;
	int locked;

	sc = FUNC3(dev);
	locked = FUNC4(&sc->sc_mtx);
	if (!locked)
		FUNC0(sc);

	val = FUNC2(sc, AXGE_ACCESS_PHY, reg, phy);

	if (!locked)
		FUNC1(sc);

	return (val);
}