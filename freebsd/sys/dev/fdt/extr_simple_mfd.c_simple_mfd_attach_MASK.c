#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int acells; int scells; } ;
struct simple_mfd_softc {int /*<<< orphan*/ * syscon; int /*<<< orphan*/ * mem_res; TYPE_1__ sc; int /*<<< orphan*/ * dev; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,char*,int*,int) ; 
 scalar_t__ FUNC2 (scalar_t__,char*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  FUNC5 (struct simple_mfd_softc*) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 struct simple_mfd_softc* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  simple_mfd_syscon_class ; 
 scalar_t__ FUNC14 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct simple_mfd_softc *sc;
	phandle_t node, child;
	device_t cdev;
	int rid;

	sc = FUNC8(dev);
	node = FUNC11(dev);

	sc->dev = dev;
	rid = 0;

	/* Parse address-cells and size-cells from the parent node as a fallback */
	if (FUNC1(node, "#address-cells", &sc->sc.acells,
	    sizeof(sc->sc.acells)) == -1) {
		if (FUNC1(FUNC3(node), "#address-cells", &sc->sc.acells,
		    sizeof(sc->sc.acells)) == -1) {
			sc->sc.acells = 2;
		}
	}
	if (FUNC1(node, "#size-cells", &sc->sc.scells,
	    sizeof(sc->sc.scells)) == -1) {
		if (FUNC1(FUNC3(node), "#size-cells", &sc->sc.scells,
		    sizeof(sc->sc.scells)) == -1) {
			sc->sc.scells = 1;
		}
	}

	/* If the node has a ranges prop, parse it so children mapping will be done correctly */
	if (FUNC2(node, "ranges")) {
		if (FUNC14(node, &sc->sc) < 0) {
			FUNC9(dev, "could not get ranges\n");
			return (ENXIO);
		}
	}

	/* Attach child devices */
	for (child = FUNC0(node); child > 0; child = FUNC4(child)) {
		cdev = FUNC13(dev, child, 0, NULL, -1, NULL);
		if (cdev != NULL)
			FUNC10(cdev);
	}

	if (FUNC12(dev, "syscon")) {
		sc->mem_res = FUNC6(dev, SYS_RES_MEMORY, &rid,
		    RF_ACTIVE);
		if (sc->mem_res == NULL) {
			FUNC9(dev,
			    "Cannot allocate memory resource\n");
			return (ENXIO);
		}

		FUNC5(sc);
		sc->syscon = FUNC15(dev,
		    &simple_mfd_syscon_class, FUNC11(dev));
		if (sc->syscon == NULL) {
			FUNC9(dev,
			    "Failed to create/register syscon\n");
			return (ENXIO);
		}
	}
	return (FUNC7(dev));
}