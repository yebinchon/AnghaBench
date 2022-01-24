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
struct vtmmio_softc {int /*<<< orphan*/  ih; int /*<<< orphan*/ * res; int /*<<< orphan*/  dev; int /*<<< orphan*/ * platform; } ;
typedef  enum intr_type { ____Placeholder_intr_type } intr_type ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vtmmio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vtmmio_softc*,int /*<<< orphan*/ *) ; 
 struct vtmmio_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  vtmmio_vq_intr ; 

__attribute__((used)) static int
FUNC5(device_t dev, enum intr_type type)
{
	struct vtmmio_softc *sc;
	int rid;
	int err;

	sc = FUNC3(dev);

	if (sc->platform != NULL) {
		err = FUNC0(sc->platform, sc->dev,
					vtmmio_vq_intr, sc);
		if (err == 0) {
			/* Okay we have backend-specific interrupts */
			return (0);
		}
	}

	rid = 0;
	sc->res[1] = FUNC1(dev, SYS_RES_IRQ, &rid,
		RF_ACTIVE);
	if (!sc->res[1]) {
		FUNC4(dev, "Can't allocate interrupt\n");
		return (ENXIO);
	}

	if (FUNC2(dev, sc->res[1], INTR_TYPE_MISC | INTR_MPSAFE,
		NULL, vtmmio_vq_intr, sc, &sc->ih)) {
		FUNC4(dev, "Can't setup the interrupt\n");
		return (ENXIO);
	}

	return (0);
}