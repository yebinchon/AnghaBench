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
typedef  int /*<<< orphan*/  uint64_t ;
struct cpufreq_dt_softc {int /*<<< orphan*/  clk; } ;
struct cpufreq_dt_opp {int dummy; } ;
struct cf_setting {int /*<<< orphan*/  freq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int ENOENT ; 
 int ENXIO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cpufreq_dt_opp* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct cpufreq_dt_opp const*,struct cf_setting*) ; 
 struct cpufreq_dt_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC6(device_t dev, struct cf_setting *set)
{
	struct cpufreq_dt_softc *sc;
	const struct cpufreq_dt_opp *opp;
	uint64_t freq;

	sc = FUNC4(dev);

	FUNC0(dev, "cpufreq_dt_get\n");
	if (FUNC1(sc->clk, &freq) != 0)
		return (ENXIO);

	opp = FUNC2(dev, freq);
	if (opp == NULL) {
		FUNC5(dev, "Can't find the current freq in opp\n");
		return (ENOENT);
	}

	FUNC3(dev, opp, set);

	FUNC0(dev, "Current freq %dMhz\n", set->freq);
	return (0);
}