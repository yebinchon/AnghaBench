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
struct cpufreq_softc {int /*<<< orphan*/  max_mhz; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  CPUFREQ_VAL_UNKNOWN ; 
 int CTLFLAG_RD ; 
 int CTLTYPE_STRING ; 
 int ENOMEM ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpufreq_settings_sysctl ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 struct cpufreq_softc* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int
FUNC10(device_t dev)
{
	struct cpufreq_softc *sc;
	device_t cf_dev, cpu_dev;

	/* Add a sysctl to get each driver's settings separately. */
	FUNC1(FUNC6(dev),
	    FUNC2(FUNC7(dev)),
	    OID_AUTO, "freq_settings", CTLTYPE_STRING | CTLFLAG_RD, dev, 0,
	    cpufreq_settings_sysctl, "A", "CPU frequency driver settings");

	/*
	 * Add only one cpufreq device to each CPU.  Currently, all CPUs
	 * must offer the same levels and be switched at the same time.
	 */
	cpu_dev = FUNC4(dev);
	if ((cf_dev = FUNC3(cpu_dev, "cpufreq", -1))) {
		sc = FUNC5(cf_dev);
		sc->max_mhz = CPUFREQ_VAL_UNKNOWN;
		return (0);
	}

	/* Add the child device and possibly sysctls. */
	cf_dev = FUNC0(cpu_dev, 0, "cpufreq", -1);
	if (cf_dev == NULL)
		return (ENOMEM);
	FUNC9(cf_dev);

	return (FUNC8(cf_dev));
}