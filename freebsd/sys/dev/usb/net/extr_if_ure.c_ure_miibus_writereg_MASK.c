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
struct ure_softc {int sc_phyno; int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ure_softc*) ; 
 scalar_t__ URE_OCP_BASE_MII ; 
 int /*<<< orphan*/  FUNC1 (struct ure_softc*) ; 
 struct ure_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ure_softc*,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, int phy, int reg, int val)
{
	struct ure_softc *sc;
	int locked;

	sc = FUNC2(dev);
	if (sc->sc_phyno != phy)
		return (0);

	locked = FUNC3(&sc->sc_mtx);
	if (!locked)
		FUNC0(sc);
	
	FUNC4(sc, URE_OCP_BASE_MII + reg * 2, val);

	if (!locked)
		FUNC1(sc);
	return (0);
}