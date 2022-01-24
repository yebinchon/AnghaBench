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
typedef  void* vm_size_t ;
typedef  scalar_t__ vm_paddr_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct resource_list_entry {scalar_t__ start; void* end; } ;
struct ofw_bus_devinfo {int /*<<< orphan*/  obd_name; } ;
struct dpaa_portals_softc {scalar_t__ sc_dp_pa; void* sc_dp_size; int /*<<< orphan*/  sc_dev; } ;
struct dpaa_portals_devinfo {int di_intr_rid; int /*<<< orphan*/  di_res; } ;
typedef  scalar_t__ phandle_t ;
typedef  scalar_t__ ihandle_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cpu_num ;
typedef  int /*<<< orphan*/  cpu ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,char*,int*,int) ; 
 scalar_t__ FUNC2 (scalar_t__,char*,void*,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct dpaa_portals_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct dpaa_portals_devinfo*,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int mp_ncpus ; 
 int /*<<< orphan*/  FUNC12 (struct ofw_bus_devinfo*) ; 
 scalar_t__ FUNC13 (struct ofw_bus_devinfo*,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,char*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*,void**,int /*<<< orphan*/ *) ; 
 struct resource_list_entry* FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 void* FUNC22 (void*,void*) ; 

__attribute__((used)) static int
FUNC23(device_t dev)
{
	struct dpaa_portals_softc *sc;
	struct resource_list_entry *rle;
	phandle_t node, child, cpu_node;
	vm_paddr_t portal_pa;
	vm_size_t portal_size;
	uint32_t addr, size;
	ihandle_t cpu;
	int cpu_num, cpus, intr_rid;
	struct dpaa_portals_devinfo di;
	struct ofw_bus_devinfo ofw_di = {};

	cpus = 0;
	sc = FUNC8(dev);
	sc->sc_dev = dev;

	node = FUNC14(dev);
	FUNC11(node, &addr, &size);

	/* Find portals tied to CPUs */
	for (child = FUNC0(node); child != 0; child = FUNC4(child)) {
		if (cpus >= mp_ncpus)
			break;
		if (!FUNC16(child, "fsl,bman-portal")) {
			continue;
		}
		/* Checkout related cpu */
		if (FUNC2(child, "cpu-handle", (void *)&cpu,
		    sizeof(cpu)) <= 0) {
			cpu = FUNC5(cpus);
			if (cpu <= 0)
				continue;
		}
		/* Acquire cpu number */
		cpu_node = FUNC3(cpu);
		if (FUNC1(cpu_node, "reg", &cpu_num, sizeof(cpu_num)) <= 0) {
			FUNC9(dev, "Could not retrieve CPU number.\n");
			return (ENXIO);
		}

		cpus++;

		if (FUNC13(&ofw_di, child) != 0) {
			FUNC9(dev, "could not set up devinfo\n");
			continue;
		}

		FUNC21(&di.di_res);
		if (FUNC17(dev, child, addr, size, &di.di_res)) {
			FUNC9(dev, "%s: could not process 'reg' "
			    "property\n", ofw_di.obd_name);
			FUNC12(&ofw_di);
			continue;
		}
		if (FUNC15(dev, child, &di.di_res, &intr_rid)) {
			FUNC9(dev, "%s: could not process "
			    "'interrupts' property\n", ofw_di.obd_name);
			FUNC20(&di.di_res);
			FUNC12(&ofw_di);
			continue;
		}
		di.di_intr_rid = intr_rid;
		
		FUNC18(child, 0, &portal_pa, &portal_size, NULL);
		rle = FUNC19(&di.di_res, SYS_RES_MEMORY, 0);

		if (sc->sc_dp_pa == 0)
			sc->sc_dp_pa = portal_pa - rle->start;

		portal_size = rle->end + 1;
		rle = FUNC19(&di.di_res, SYS_RES_MEMORY, 1);
		portal_size = FUNC22(rle->end + 1, portal_size);
		sc->sc_dp_size = FUNC22(sc->sc_dp_size, portal_size);

		if (FUNC10(dev, &di, cpu_num))
			goto err;
	}

	FUNC12(&ofw_di);

	return (FUNC6(dev));
err:
	FUNC20(&di.di_res);
	FUNC12(&ofw_di);
	FUNC7(dev);
	return (ENXIO);
}