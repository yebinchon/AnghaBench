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
struct simplebus_softc {int /*<<< orphan*/  scells; int /*<<< orphan*/  acells; } ;
struct mdionexus_ofw_devinfo {int /*<<< orphan*/  di_dinfo; int /*<<< orphan*/  di_rl; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  M_THUNDER_MDIO ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct mdionexus_ofw_devinfo*) ; 
 int /*<<< orphan*/  FUNC6 (struct mdionexus_ofw_devinfo*,int /*<<< orphan*/ ) ; 
 struct mdionexus_ofw_devinfo* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (scalar_t__,struct simplebus_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct simplebus_softc *sc;
	struct mdionexus_ofw_devinfo *di;
	device_t child;
	phandle_t parent, node;

	parent = FUNC11(dev);
	FUNC16(dev, parent);

	sc = (struct simplebus_softc *)FUNC3(dev);

	if (FUNC8(parent, sc) < 0) {
		FUNC4(dev, "could not get ranges\n");
		return (ENXIO);
	}
	/* Iterate through all bus subordinates */
	for (node = FUNC0(parent); node > 0; node = FUNC1(node)) {
		/* Allocate and populate devinfo. */
		di = FUNC7(sizeof(*di), M_THUNDER_MDIO, M_WAITOK | M_ZERO);
		if (FUNC10(&di->di_dinfo, node) != 0) {
			FUNC6(di, M_THUNDER_MDIO);
			continue;
		}

		/* Initialize and populate resource list. */
		FUNC15(&di->di_rl);
		FUNC13(dev, node, sc->acells, sc->scells,
		    &di->di_rl);
		FUNC12(dev, node, &di->di_rl, NULL);

		/* Add newbus device for this FDT node */
		child = FUNC2(dev, NULL, -1);
		if (child == NULL) {
			FUNC14(&di->di_rl);
			FUNC9(&di->di_dinfo);
			FUNC6(di, M_THUNDER_MDIO);
			continue;
		}

		FUNC5(child, di);
	}

	return (0);
}