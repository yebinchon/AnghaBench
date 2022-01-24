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
struct smist_softc {struct cf_setting* sets; } ;
struct cf_setting {int freq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CPUFREQ_VAL_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  GET_STATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 struct smist_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct smist_softc*,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, struct cf_setting *set)
{
	struct smist_softc *sc;
	uint64_t rate;
	int state;
	int rv;

	sc = FUNC2(dev);
	rv = FUNC3(sc, &state, GET_STATE);
	if (rv != 0)
		return (rv);

	/* If we haven't changed settings yet, estimate the current value. */
	if (sc->sets[state].freq == CPUFREQ_VAL_UNKNOWN) {
		FUNC1(0, &rate);
		sc->sets[state].freq = rate / 1000000;
		FUNC0(dev, "get calibrated new rate of %d\n",
		    sc->sets[state].freq);
	}
	*set = sc->sets[state];

	return (0);
}