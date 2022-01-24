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
typedef  int vm_size_t ;
typedef  int vm_paddr_t ;
typedef  int uintmax_t ;
typedef  int uint32_t ;
struct ofw_bus_devinfo {int /*<<< orphan*/  obd_name; } ;
struct dpaa_portals_softc {int sc_dp_size; int sc_dp_pa; int /*<<< orphan*/  sc_dev; } ;
struct dpaa_portals_devinfo {int di_intr_rid; int /*<<< orphan*/  di_res; } ;
typedef  scalar_t__ phandle_t ;
typedef  scalar_t__ ihandle_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cpu_num ;
typedef  int /*<<< orphan*/  cpu ;
typedef  int cell_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,char*,int*,int) ; 
 int FUNC2 (scalar_t__,char*,int,void**) ; 
 scalar_t__ FUNC3 (scalar_t__,char*,void*,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct dpaa_portals_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct dpaa_portals_devinfo*,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int*,int*) ; 
 int mp_ncpus ; 
 int /*<<< orphan*/  FUNC12 (struct ofw_bus_devinfo*) ; 
 scalar_t__ FUNC13 (struct ofw_bus_devinfo*,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,char*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,scalar_t__,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC23(device_t dev)
{
	struct dpaa_portals_softc *sc;
	phandle_t node, child, cpu_node;
	vm_paddr_t portal_pa, portal_par_pa;
	vm_size_t portal_size;
	uint32_t addr, paddr, size;
	ihandle_t cpu;
	int cpu_num, cpus, intr_rid;
	struct dpaa_portals_devinfo di;
	struct ofw_bus_devinfo ofw_di = {};
	cell_t *range;
	int nrange;
	int i;

	cpus = 0;
	sc = FUNC8(dev);
	sc->sc_dev = dev;

	node = FUNC14(dev);

	/* Get this node's range */
	FUNC11(FUNC14(FUNC7(dev)), &paddr, &size);
	FUNC11(node, &addr, &size);

	nrange = FUNC2(node, "ranges",
	    sizeof(*range), (void **)&range);
	if (nrange < addr + paddr + size)
		return (ENXIO);
	portal_pa = portal_par_pa = 0;
	portal_size = 0;
	for (i = 0; i < addr; i++) {
		portal_pa <<= 32;
		portal_pa |= range[i];
	}
	for (; i < paddr + addr; i++) {
		portal_par_pa <<= 32;
		portal_par_pa |= range[i];
	}
	portal_pa += portal_par_pa;
	for (; i < size + paddr + addr; i++) {
		portal_size = (uintmax_t)portal_size << 32;
		portal_size |= range[i];
	}
	FUNC6(range);
	sc->sc_dp_size = portal_size;
	sc->sc_dp_pa = portal_pa;

	/* Find portals tied to CPUs */
	for (child = FUNC0(node); child != 0; child = FUNC5(child)) {
		if (cpus >= mp_ncpus)
			break;
		if (!FUNC16(child, "fsl,qman-portal")) {
			continue;
		}
		/* Checkout related cpu */
		if (FUNC3(child, "cpu-handle", (void *)&cpu,
		    sizeof(cpu)) <= 0) {
			cpu = FUNC18(cpus);
			if (cpu <= 0)
				continue;
		}
		/* Acquire cpu number */
		cpu_node = FUNC4(cpu);
		if (FUNC1(cpu_node, "reg", &cpu_num, sizeof(cpu_num)) <= 0) {
			FUNC9(dev, "Could not retrieve CPU number.\n");
			return (ENXIO);
		}

		cpus++;

		if (FUNC13(&ofw_di, child) != 0) {
			FUNC9(dev, "could not set up devinfo\n");
			continue;
		}

		FUNC22(&di.di_res);
		if (FUNC17(dev, child, addr, size, &di.di_res)) {
			FUNC9(dev, "%s: could not process 'reg' "
			    "property\n", ofw_di.obd_name);
			FUNC12(&ofw_di);
			continue;
		}
		if (FUNC15(dev, child, &di.di_res, &intr_rid)) {
			FUNC9(dev, "%s: could not process "
			    "'interrupts' property\n", ofw_di.obd_name);
			FUNC21(&di.di_res);
			FUNC12(&ofw_di);
			continue;
		}
		di.di_intr_rid = intr_rid;

		if (FUNC10(dev, &di, cpu_num))
			goto err;
	}

	FUNC12(&ofw_di);

	return (FUNC19(dev));
err:
	FUNC21(&di.di_res);
	FUNC12(&ofw_di);
	FUNC20(dev);
	return (ENXIO);
}