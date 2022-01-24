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
struct cpufreq_dt_softc {int /*<<< orphan*/  clk; int /*<<< orphan*/  reg; int /*<<< orphan*/  dev; } ;
struct cpufreq_dt_opp {int uvolt_target; int freq; int /*<<< orphan*/  uvolt_max; int /*<<< orphan*/  uvolt_min; } ;
struct cf_setting {int freq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_SET_ROUND_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENXIO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct cpufreq_dt_opp* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct cpufreq_dt_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev, const struct cf_setting *set)
{
	struct cpufreq_dt_softc *sc;
	const struct cpufreq_dt_opp *opp, *copp;
	uint64_t freq;
	int uvolt, error;

	sc = FUNC5(dev);

	if (FUNC1(sc->clk, &freq) != 0) {
		FUNC6(dev, "Can't get current clk freq\n");
		return (ENXIO);
	}
	/* Try to get current valtage by using regulator first. */
	error = FUNC7(sc->reg, &uvolt);
	if (error != 0) {
		/*
		 * Try oppoints table as backup way. However,
		 * this is insufficient because the actual processor
		 * frequency may not be in the table. PLL frequency
		 * granularity can be different that granularity of
		 * oppoint table.
		 */
		copp = FUNC3(sc->dev, freq);
		if (copp == NULL) {
			FUNC6(dev,
			    "Can't find the current freq in opp\n");
			return (ENOENT);
		}
		uvolt = copp->uvolt_target;

	}

	opp = FUNC3(sc->dev, set->freq * 1000000);
	if (opp == NULL) {
		FUNC6(dev, "Couldn't find an opp for this freq\n");
		return (EINVAL);
	}
	FUNC0(sc->dev, "Current freq %ju, uvolt: %d\n", freq, uvolt);
	FUNC0(sc->dev, "Target freq %ju, , uvolt: %d\n",
	    opp->freq, opp->uvolt_target);

	if (uvolt < opp->uvolt_target) {
		FUNC0(dev, "Changing regulator from %u to %u\n",
		    uvolt, opp->uvolt_target);
		error = FUNC8(sc->reg,
		    opp->uvolt_min,
		    opp->uvolt_max);
		if (error != 0) {
			FUNC0(dev, "Failed, backout\n");
			return (ENXIO);
		}
	}

	FUNC0(dev, "Setting clk to %ju\n", opp->freq);
	error = FUNC2(sc->clk, opp->freq, CLK_SET_ROUND_DOWN);
	if (error != 0) {
		FUNC0(dev, "Failed, backout\n");
		/* Restore previous voltage (best effort) */
		error = FUNC8(sc->reg,
		    copp->uvolt_min,
		    copp->uvolt_max);
		return (ENXIO);
	}

	if (uvolt > opp->uvolt_target) {
		FUNC0(dev, "Changing regulator from %u to %u\n",
		    uvolt, opp->uvolt_target);
		error = FUNC8(sc->reg,
		    opp->uvolt_min,
		    opp->uvolt_max);
		if (error != 0) {
			FUNC0(dev, "Failed to switch regulator to %d\n",
			    opp->uvolt_target);
			/* Restore previous CPU frequency (best effort) */
			(void)FUNC2(sc->clk, copp->freq, 0);
			return (ENXIO);
		}
	}

	if (FUNC1(sc->clk, &freq) == 0)
		FUNC4(dev, freq);

	return (0);
}