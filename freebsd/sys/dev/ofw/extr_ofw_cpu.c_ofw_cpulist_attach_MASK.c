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
struct ofw_cpulist_softc {int sc_addr_cells; } ;
struct ofw_bus_devinfo {int /*<<< orphan*/  obd_name; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_OFWCPU ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,int*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct ofw_cpulist_softc* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct ofw_bus_devinfo*) ; 
 int /*<<< orphan*/  FUNC8 (struct ofw_bus_devinfo*,int /*<<< orphan*/ ) ; 
 struct ofw_bus_devinfo* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ofw_bus_devinfo*) ; 
 scalar_t__ FUNC11 (struct ofw_bus_devinfo*,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int 
FUNC13(device_t dev) 
{
	struct ofw_cpulist_softc *sc;
	phandle_t root, child;
	device_t cdev;
	struct ofw_bus_devinfo *dinfo;

	sc = FUNC5(dev);
	root = FUNC12(dev);

	sc->sc_addr_cells = 1;
	FUNC1(root, "#address-cells", &sc->sc_addr_cells,
	    sizeof(sc->sc_addr_cells));

	for (child = FUNC0(root); child != 0; child = FUNC2(child)) {
		dinfo = FUNC9(sizeof(*dinfo), M_OFWCPU, M_WAITOK | M_ZERO);

                if (FUNC11(dinfo, child) != 0) {
                        FUNC8(dinfo, M_OFWCPU);
                        continue;
                }
                cdev = FUNC4(dev, NULL, -1);
                if (cdev == NULL) {
                        FUNC6(dev, "<%s>: device_add_child failed\n",
                            dinfo->obd_name);
                        FUNC10(dinfo);
                        FUNC8(dinfo, M_OFWCPU);
                        continue;
                }
		FUNC7(cdev, dinfo);
	}

	return (FUNC3(dev));
}