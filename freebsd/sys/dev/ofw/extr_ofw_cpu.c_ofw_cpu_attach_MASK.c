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
typedef  int uint64_t ;
struct ofw_cpulist_softc {int sc_addr_cells; } ;
struct ofw_cpu_softc {int* sc_reg; int sc_reg_valid; int sc_nominal_mhz; int /*<<< orphan*/ * sc_cpu_pcpu; } ;
struct cpuref {scalar_t__ cr_hwref; int /*<<< orphan*/  cr_cpuid; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  clk_t ;
typedef  scalar_t__ cell_t ;
typedef  int /*<<< orphan*/  cell ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,void**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 scalar_t__ bootverbose ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC12 (int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 void* FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct cpuref*) ; 
 int FUNC16 (struct cpuref*) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct ofw_cpulist_softc *psc;
	struct ofw_cpu_softc *sc;
	phandle_t node;
	pcell_t cell;
	int rv;
#ifdef EXT_RESOURCES
	clk_t cpuclk;
	uint64_t freq;
#endif

	sc = FUNC9(dev);
	psc = FUNC9(FUNC8(dev));

	if (FUNC12(sc->sc_reg) < psc->sc_addr_cells) {
		if (bootverbose)
			FUNC11(dev, "Too many address cells\n");
		return (EINVAL);
	}

	node = FUNC13(dev);

	/* Read and validate the reg property for use later */
	sc->sc_reg_valid = false;
	rv = FUNC0(node, "reg", sc->sc_reg, sizeof(sc->sc_reg));
	if (rv < 0)
		FUNC11(dev, "missing 'reg' property\n");
	else if ((rv % 4) != 0) {
		if (bootverbose)
			FUNC11(dev, "Malformed reg property\n");
	} else if ((rv / 4) != psc->sc_addr_cells) {
		if (bootverbose)
			FUNC11(dev, "Invalid reg size %u\n", rv);
	} else
		sc->sc_reg_valid = true;

#ifdef __powerpc__
	/*
	 * On powerpc, "interrupt-servers" denotes a SMT CPU.  Look for any
	 * thread on this CPU, and assign that.
	 */
	if (OF_hasprop(node, "ibm,ppc-interrupt-server#s")) {
		struct cpuref cpuref;
		cell_t *servers;
		int i, nservers, rv;
		
		if ((nservers = OF_getencprop_alloc(node, 
		    "ibm,ppc-interrupt-server#s", (void **)&servers)) < 0)
			return (ENXIO);
		nservers /= sizeof(cell_t);
		for (i = 0; i < nservers; i++) {
			for (rv = platform_smp_first_cpu(&cpuref); rv == 0;
			    rv = platform_smp_next_cpu(&cpuref)) {
				if (cpuref.cr_hwref == servers[i]) {
					sc->sc_cpu_pcpu =
					    pcpu_find(cpuref.cr_cpuid);
					if (sc->sc_cpu_pcpu == NULL) {
						OF_prop_free(servers);
						return (ENXIO);
					}
					break;
				}
			}
			if (rv != ENOENT)
				break;
		}
		OF_prop_free(servers);
		if (sc->sc_cpu_pcpu == NULL) {
			device_printf(dev, "No CPU found for this device.\n");
			return (ENXIO);
		}
	} else
#endif
	sc->sc_cpu_pcpu = FUNC14(FUNC10(dev));

	if (FUNC0(node, "clock-frequency", &cell, sizeof(cell)) < 0) {
#ifdef EXT_RESOURCES
		rv = clk_get_by_ofw_index(dev, 0, 0, &cpuclk);
		if (rv == 0) {
			rv = clk_get_freq(cpuclk, &freq);
			if (rv != 0 && bootverbose)
				device_printf(dev,
				    "Cannot get freq of property clocks\n");
			else
				sc->sc_nominal_mhz = freq / 1000000;
		} else
#endif
		{
			if (bootverbose)
				FUNC11(dev,
				    "missing 'clock-frequency' property\n");
		}
	} else
		sc->sc_nominal_mhz = cell / 1000000; /* convert to MHz */

	if (sc->sc_nominal_mhz != 0 && bootverbose)
		FUNC11(dev, "Nominal frequency %dMhz\n",
		    sc->sc_nominal_mhz);
	FUNC5(dev);
	return (FUNC4(dev));
}