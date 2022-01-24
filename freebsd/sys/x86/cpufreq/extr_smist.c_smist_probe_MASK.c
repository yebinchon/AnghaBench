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
struct smist_softc {int smi_cmd; int smi_data; int command; int flags; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int*) ; 
 int CPUFREQ_FLAG_INFO_ONLY ; 
 int ENXIO ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct smist_softc* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,int*,int*,int*) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct smist_softc *sc;
	device_t ichss_dev, perf_dev;
	int sig, smi_cmd, command, smi_data, flags;
	int type;
	int rv;

	if (FUNC8("smist", 0))
		return (ENXIO);

	sc = FUNC3(dev);

	/*
	 * If the ACPI perf or ICH SpeedStep drivers have attached and not
	 * just offering info, let them manage things.
	 */
	perf_dev = FUNC1(FUNC2(dev), "acpi_perf", -1);
	if (perf_dev && FUNC4(perf_dev)) {
		rv = FUNC0(perf_dev, &type);
		if (rv == 0 && (type & CPUFREQ_FLAG_INFO_ONLY) == 0)
			return (ENXIO);
	}
	ichss_dev = FUNC1(FUNC2(dev), "ichss", -1);
	if (ichss_dev && FUNC4(ichss_dev))
		return (ENXIO);

	FUNC7(&sig, &smi_cmd, &command, &smi_data, &flags);
	if (bootverbose)
		FUNC5(dev, "sig %.8x smi_cmd %.4x command %.2x "
		    "smi_data %.4x flags %.8x\n",
		    sig, smi_cmd, command, smi_data, flags);

	if (sig != -1) {
		sc->smi_cmd = smi_cmd;
		sc->smi_data = smi_data;

		/*
		 * Sometimes int 15h 'GSIC' returns 0x80 for command, when
		 * it is actually 0x82.  The Windows driver will overwrite
		 * this value given by the registry.
		 */
		if (command == 0x80) {
			FUNC5(dev,
			    "GSIC returned cmd 0x80, should be 0x82\n");
			command = 0x82;
		}
		sc->command = (sig & 0xffffff00) | (command & 0xff);
		sc->flags = flags;
	} else {
		/* Give some default values */
		sc->smi_cmd = 0xb2;
		sc->smi_data = 0xb3;
		sc->command = 0x47534982;
		sc->flags = 0;
	}

	FUNC6(dev, "SpeedStep SMI");

	return (-1500);
}