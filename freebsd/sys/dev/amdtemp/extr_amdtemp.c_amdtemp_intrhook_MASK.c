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
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ich_arg; } ;
struct amdtemp_softc {int sc_ncores; int sc_ntemps; TYPE_1__ sc_ich; int /*<<< orphan*/ ** sc_sysctl_cpu; } ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  amdsensor_t ;

/* Variables and functions */
 int /*<<< orphan*/  CORE0 ; 
 int /*<<< orphan*/  CORE0_SENSOR0 ; 
 int /*<<< orphan*/  CORE1 ; 
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/ * FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  amdtemp_sysctl ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct amdtemp_softc* FUNC4 (int /*<<< orphan*/ *) ; 
 struct sysctl_ctx_list* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * root_bus ; 

void
FUNC8(void *arg)
{
	struct amdtemp_softc *sc;
	struct sysctl_ctx_list *sysctlctx;
	device_t dev = (device_t)arg;
	device_t acpi, cpu, nexus;
	amdsensor_t sensor;
	int i;

	sc = FUNC4(dev);

	/*
	 * dev.cpu.N.temperature.
	 */
	nexus = FUNC3(root_bus, "nexus", 0);
	acpi = FUNC3(nexus, "acpi", 0);

	for (i = 0; i < sc->sc_ncores; i++) {
		if (sc->sc_sysctl_cpu[i] != NULL)
			continue;
		cpu = FUNC3(acpi, "cpu",
		    FUNC7(dev) * sc->sc_ncores + i);
		if (cpu != NULL) {
			sysctlctx = FUNC5(cpu);

			sensor = sc->sc_ntemps > 1 ?
			    (i == 0 ? CORE0 : CORE1) : CORE0_SENSOR0;
			sc->sc_sysctl_cpu[i] = FUNC0(sysctlctx,
			    FUNC1(FUNC6(cpu)),
			    OID_AUTO, "temperature", CTLTYPE_INT | CTLFLAG_RD,
			    dev, sensor, amdtemp_sysctl, "IK",
			    "Current temparature");
		}
	}
	if (sc->sc_ich.ich_arg != NULL)
		FUNC2(&sc->sc_ich);
}