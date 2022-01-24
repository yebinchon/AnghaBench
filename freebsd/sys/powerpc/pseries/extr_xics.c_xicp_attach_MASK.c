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
struct xicp_softc {int* cpu_range; int xics_emu; scalar_t__ nintvecs; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ ** mem; void* ibm_get_xive; void* ibm_set_xive; void* ibm_int_off; void* ibm_int_on; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  pc_hwref; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MAX_XICP_IRQS ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPAL_INT_SET_CPPR ; 
 int /*<<< orphan*/  OPAL_INT_SET_MFRR ; 
 int /*<<< orphan*/  OPAL_XIVE_RESET ; 
 int /*<<< orphan*/  OPAL_XIVE_XICS_MODE_EMU ; 
 int PSL_HV ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 struct xicp_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 () ; 
 int mp_ncpus ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,...) ; 
 scalar_t__ FUNC12 () ; 
 TYPE_1__* FUNC13 (int) ; 
 int /*<<< orphan*/  powernv_smp_ap_extra_init ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  root_pic ; 
 scalar_t__ FUNC15 () ; 
 void* FUNC16 (char*) ; 
 int /*<<< orphan*/  xicp_smp_cpu_startup ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct xicp_softc *sc = FUNC5(dev);
	phandle_t phandle = FUNC9(dev);

	if (FUNC15()) {
		sc->ibm_int_on = FUNC16("ibm,int-on");
		sc->ibm_int_off = FUNC16("ibm,int-off");
		sc->ibm_set_xive = FUNC16("ibm,set-xive");
		sc->ibm_get_xive = FUNC16("ibm,get-xive");
#ifdef POWERNV
	} else if (opal_check() == 0) {
		/* No init needed */
#endif
	} else {
		FUNC6(dev, "Cannot attach without RTAS or OPAL\n");
		return (ENXIO);
	}

	if (FUNC1(phandle, "ibm,interrupt-server-ranges")) {
		FUNC0(phandle, "ibm,interrupt-server-ranges",
		    sc->cpu_range, sizeof(sc->cpu_range));
		sc->cpu_range[1] += sc->cpu_range[0];
		FUNC6(dev, "Handling CPUs %d-%d\n", sc->cpu_range[0],
		    sc->cpu_range[1]-1);
#ifdef POWERNV
	} else if (ofw_bus_is_compatible(dev, "ibm,opal-intc")) {
			/*
			 * For now run POWER9 XIVE interrupt controller in XICS
			 * compatibility mode.
			 */
			sc->xics_emu = true;
			opal_call(OPAL_XIVE_RESET, OPAL_XIVE_XICS_MODE_EMU);
#endif
	} else {
		sc->cpu_range[0] = 0;
		sc->cpu_range[1] = mp_ncpus;
	}

#ifdef POWERNV
	if (mfmsr() & PSL_HV) {
		int i;

		if (sc->xics_emu) {
			opal_call(OPAL_INT_SET_CPPR, 0xff);
			for (i = 0; i < mp_ncpus; i++) {
				opal_call(OPAL_INT_SET_MFRR,
				    pcpu_find(i)->pc_hwref, 0xff);
			}
		} else {
			for (i = 0; i < sc->cpu_range[1] - sc->cpu_range[0]; i++) {
				sc->mem[i] = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
				    &i, RF_ACTIVE);
				if (sc->mem[i] == NULL) {
					device_printf(dev, "Could not alloc mem "
					    "resource %d\n", i);
					return (ENXIO);
				}

				/* Unmask interrupts on all cores */
				bus_write_1(sc->mem[i], 4, 0xff);
				bus_write_1(sc->mem[i], 12, 0xff);
			}
		}
	}
#endif

	FUNC8(&sc->sc_mtx, "XICP", NULL, MTX_DEF);
	sc->nintvecs = 0;

	FUNC14(dev, FUNC2(phandle), MAX_XICP_IRQS,
	    1 /* Number of IPIs */, FALSE);
	root_pic = dev;

#ifdef POWERNV
	if (sc->xics_emu)
		powernv_smp_ap_extra_init = xicp_smp_cpu_startup;
#endif

	return (0);
}