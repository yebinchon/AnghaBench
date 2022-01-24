#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u_int ;
struct TYPE_3__ {char* rm_descr; int /*<<< orphan*/  rm_type; } ;
struct iobus_softc {scalar_t__ sc_node; void* sc_addr; void* sc_size; TYPE_1__ sc_mem_rman; } ;
struct iobus_devinfo {char* id_name; scalar_t__ id_node; int /*<<< orphan*/  id_resources; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  M_IOBUS ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,char*,void**,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,void**) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  RMAN_ARRAY ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct iobus_softc* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct iobus_devinfo*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,struct iobus_devinfo*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,struct iobus_devinfo*,void*) ; 
 struct iobus_devinfo* FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct iobus_devinfo*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct iobus_softc *sc;
        struct iobus_devinfo *dinfo;
        phandle_t  root;
        phandle_t  child;
        device_t   cdev;
        char *name;
	u_int reg[2];
	int size;

	sc = FUNC7(dev);
	sc->sc_node = FUNC14(dev);

	/*
	 * Find the base addr/size of the iobus, and initialize the
	 * resource manager
	 */
	size = FUNC1(sc->sc_node, "reg", reg, sizeof(reg));
	if (size == sizeof(reg)) {
		sc->sc_addr = reg[0];
		sc->sc_size = reg[1];
	} else {
		return (ENXIO);
	}

	sc->sc_mem_rman.rm_type = RMAN_ARRAY;
        sc->sc_mem_rman.rm_descr = "IOBus Device Memory";
        if (FUNC16(&sc->sc_mem_rman) != 0) {
		FUNC8(dev,
                    "failed to init mem range resources\n");
                return (ENXIO);
	}
	FUNC17(&sc->sc_mem_rman, 0, sc->sc_size);

        /*
         * Iterate through the sub-devices
         */
        root = sc->sc_node;

        for (child = FUNC0(root); child != 0; child = FUNC3(child)) {
                FUNC2(child, "name", (void **)&name);

                cdev = FUNC6(dev, NULL, -1);
                if (cdev != NULL) {
                        dinfo = FUNC12(sizeof(*dinfo), M_IOBUS, M_WAITOK);
			FUNC13(dinfo, 0, sizeof(*dinfo));
			FUNC15(&dinfo->id_resources);
                        dinfo->id_node = child;
                        dinfo->id_name = name;
			FUNC10(child, dinfo);
			FUNC11(child, dinfo, sc->sc_addr);
                        FUNC9(cdev, dinfo);
                } else {
                        FUNC4(name);
                }
        }

        return (FUNC5(dev));
}