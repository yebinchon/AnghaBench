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
struct ure_softc {int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int URE_GMEDIASTAT ; 
 int /*<<< orphan*/  FUNC0 (struct ure_softc*) ; 
 int /*<<< orphan*/  URE_MCU_TYPE_PLA ; 
 scalar_t__ URE_OCP_BASE_MII ; 
 int /*<<< orphan*/  FUNC1 (struct ure_softc*) ; 
 struct ure_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ure_softc*,scalar_t__) ; 
 int FUNC5 (struct ure_softc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, int phy, int reg)
{
	struct ure_softc *sc;
	uint16_t val;
	int locked;

	sc = FUNC2(dev);
	locked = FUNC3(&sc->sc_mtx);
	if (!locked)
		FUNC0(sc);

	/* Let the rgephy driver read the URE_GMEDIASTAT register. */
	if (reg == URE_GMEDIASTAT) {
		if (!locked)
			FUNC1(sc);
		return (FUNC5(sc, URE_GMEDIASTAT, URE_MCU_TYPE_PLA));
	}

	val = FUNC4(sc, URE_OCP_BASE_MII + reg * 2);

	if (!locked)
		FUNC1(sc);
	return (val);
}