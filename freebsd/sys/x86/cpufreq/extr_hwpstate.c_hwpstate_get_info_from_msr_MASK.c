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
struct hwpstate_softc {int cfnum; struct hwpstate_setting* hwpstate_settings; } ;
struct hwpstate_setting {int freq; int pstate_id; void* lat; void* power; void* volts; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 void* CPUFREQ_VAL_UNKNOWN ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ MSR_AMD_10H_11H_CONFIG ; 
 scalar_t__ MSR_AMD_10H_11H_LIMIT ; 
 int /*<<< orphan*/  cpu_id ; 
 struct hwpstate_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct hwpstate_softc *sc;
	struct hwpstate_setting *hwpstate_set;
	uint64_t msr;
	int family, i, fid, did;

	family = FUNC5(cpu_id);
	sc = FUNC7(dev);
	/* Get pstate count */
	msr = FUNC8(MSR_AMD_10H_11H_LIMIT);
	sc->cfnum = 1 + FUNC2(msr);
	hwpstate_set = sc->hwpstate_settings;
	for (i = 0; i < sc->cfnum; i++) {
		msr = FUNC8(MSR_AMD_10H_11H_CONFIG + i);
		if ((msr & ((uint64_t)1 << 63)) == 0) {
			FUNC6(dev, "msr is not valid.\n");
			return (ENXIO);
		}
		did = FUNC0(msr);
		fid = FUNC1(msr);

		/* Convert fid/did to frequency. */
		switch (family) {
		case 0x11:
			hwpstate_set[i].freq = (100 * (fid + 0x08)) >> did;
			break;
		case 0x10:
		case 0x12:
		case 0x15:
		case 0x16:
			hwpstate_set[i].freq = (100 * (fid + 0x10)) >> did;
			break;
		case 0x17:
			did = FUNC3(msr);
			if (did == 0) {
				FUNC6(dev, "unexpected did: 0\n");
				did = 1;
			}
			fid = FUNC4(msr);
			hwpstate_set[i].freq = (200 * fid) / did;
			break;
		default:
			FUNC6(dev, "get_info_from_msr: AMD family"
			    " 0x%02x CPUs are not supported yet\n", family);
			return (ENXIO);
		}
		hwpstate_set[i].pstate_id = i;
		/* There was volts calculation, but deleted it. */
		hwpstate_set[i].volts = CPUFREQ_VAL_UNKNOWN;
		hwpstate_set[i].power = CPUFREQ_VAL_UNKNOWN;
		hwpstate_set[i].lat = CPUFREQ_VAL_UNKNOWN;
	}
	return (0);
}