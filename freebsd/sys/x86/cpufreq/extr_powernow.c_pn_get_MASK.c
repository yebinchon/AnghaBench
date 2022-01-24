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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ u_int ;
struct pn_softc {int errata; int pn_type; int powernow_max_states; int /*<<< orphan*/ * vid_to_volts; TYPE_1__* powernow_states; } ;
struct cf_setting {int freq; int lat; int /*<<< orphan*/ * dev; int /*<<< orphan*/  volts; int /*<<< orphan*/  power; } ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_2__ {scalar_t__ fid; scalar_t__ vid; int freq; int /*<<< orphan*/  power; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_VAL_UNKNOWN ; 
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  MSR_AMDK7_FIDVID_STATUS ; 
 int PENDING_STUCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
#define  PN7_TYPE 129 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
#define  PN8_TYPE 128 
 struct pn_softc* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cf_setting*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev, struct cf_setting *cf)
{
	struct pn_softc *sc;
	u_int cfid = 0, cvid = 0;
	int i;
	uint64_t status;

	if (cf == NULL)
		return (EINVAL);
	sc = FUNC4(dev);
	if (sc->errata & PENDING_STUCK)
		return (ENXIO);

	status = FUNC6(MSR_AMDK7_FIDVID_STATUS);

	switch (sc->pn_type) {
	case PN7_TYPE:
		cfid = FUNC0(status);
		cvid = FUNC1(status);
		break;
	case PN8_TYPE:
		cfid = FUNC2(status);
		cvid = FUNC3(status);
		break;
	}
	for (i = 0; i < sc->powernow_max_states; ++i)
		if (cfid == sc->powernow_states[i].fid &&
		    cvid == sc->powernow_states[i].vid)
			break;

	if (i < sc->powernow_max_states) {
		cf->freq = sc->powernow_states[i].freq / 1000;
		cf->power = sc->powernow_states[i].power;
		cf->lat = 200;
		cf->volts = sc->vid_to_volts[cvid];
		cf->dev = dev;
	} else {
		FUNC5(cf, CPUFREQ_VAL_UNKNOWN, sizeof(*cf));
		cf->dev = NULL;
	}

	return (0);
}