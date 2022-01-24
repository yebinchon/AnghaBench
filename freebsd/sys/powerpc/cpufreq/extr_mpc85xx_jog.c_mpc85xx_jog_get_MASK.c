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
typedef  int /*<<< orphan*/  uint32_t ;
struct mpc85xx_jog_softc {int /*<<< orphan*/  cpu; } ;
struct cf_setting {int /*<<< orphan*/  dev; int /*<<< orphan*/  freq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_VAL_UNKNOWN ; 
 int EINVAL ; 
 int /*<<< orphan*/  GUTS_PORPLLSR ; 
 int /*<<< orphan*/  MHZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mpc85xx_jog_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cf_setting*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int
FUNC5(device_t dev, struct cf_setting *set)
{
	struct mpc85xx_jog_softc *sc;
	uint32_t pmjcr;
	uint32_t freq;

	if (set == NULL)
		return (EINVAL);

	sc = FUNC2(dev);
	FUNC3(set, CPUFREQ_VAL_UNKNOWN, sizeof(*set));

	pmjcr = FUNC1(GUTS_PORPLLSR);
	freq = FUNC0(pmjcr, sc->cpu);
	freq *= FUNC4();
	freq /= MHZ;
	
	set->freq = freq;
	set->dev = dev;

	return (0);
}