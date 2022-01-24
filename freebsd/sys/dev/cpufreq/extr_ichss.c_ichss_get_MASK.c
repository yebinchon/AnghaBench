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
typedef  size_t uint8_t ;
typedef  int uint64_t ;
struct ichss_softc {struct cf_setting* sets; int /*<<< orphan*/  ctrl_reg; } ;
struct cf_setting {int freq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CPUFREQ_VAL_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 size_t ICHSS_CTRL_BIT ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 struct ichss_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, struct cf_setting *set)
{
	struct ichss_softc *sc;
	uint64_t rate;
	uint8_t state;

	sc = FUNC3(dev);
	state = FUNC1(sc->ctrl_reg) & ICHSS_CTRL_BIT;

	/* If we haven't changed settings yet, estimate the current value. */
	if (sc->sets[state].freq == CPUFREQ_VAL_UNKNOWN) {
		FUNC2(0, &rate);
		sc->sets[state].freq = rate / 1000000;
		FUNC0("ichss: get calibrated new rate of %d\n",
		    sc->sets[state].freq);
	}
	*set = sc->sets[state];

	return (0);
}