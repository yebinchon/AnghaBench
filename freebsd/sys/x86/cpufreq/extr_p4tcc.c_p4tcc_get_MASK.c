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
struct p4tcc_softc {int /*<<< orphan*/  auto_mode; } ;
struct cf_setting {int /*<<< orphan*/  dev; int /*<<< orphan*/  freq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_VAL_UNKNOWN ; 
 int EINVAL ; 
 int /*<<< orphan*/  MSR_THERM_CONTROL ; 
 int TCC_NUM_SETTINGS ; 
 int TCC_REG_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct p4tcc_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cf_setting*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, struct cf_setting *set)
{
	struct p4tcc_softc *sc;
	uint64_t msr;
	int val;

	if (set == NULL)
		return (EINVAL);
	sc = FUNC1(dev);

	/*
	 * Read the current register and extract the current setting.  If
	 * in automatic mode, assume we're at TCC_NUM_SETTINGS (100%).
	 *
	 * XXX This is not completely reliable since at high temperatures
	 * the CPU may be automatically throttling to 50% but it's the best
	 * we can do.
	 */
	if (!sc->auto_mode) {
		msr = FUNC3(MSR_THERM_CONTROL);
		val = (msr >> TCC_REG_OFFSET) & (TCC_NUM_SETTINGS - 1);
	} else
		val = TCC_NUM_SETTINGS;

	FUNC2(set, CPUFREQ_VAL_UNKNOWN, sizeof(*set));
	set->freq = FUNC0(val);
	set->dev = dev;

	return (0);
}