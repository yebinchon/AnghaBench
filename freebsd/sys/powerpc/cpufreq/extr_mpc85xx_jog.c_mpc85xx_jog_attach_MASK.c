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
struct ofw_compat_data {scalar_t__ ocd_data; } ;
struct mpc85xx_jog_softc {int /*<<< orphan*/  low; int /*<<< orphan*/  min_freq; int /*<<< orphan*/  cpu; int /*<<< orphan*/  high; int /*<<< orphan*/  dev; } ;
struct mpc85xx_constraints {int /*<<< orphan*/  min_mult; int /*<<< orphan*/  threshold; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  GUTS_PORPLLSR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct mpc85xx_jog_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 struct ofw_compat_data* FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct ofw_compat_data *compat;
	struct mpc85xx_jog_softc *sc;
	struct mpc85xx_constraints *constraints;
	phandle_t cpu;
	uint32_t reg;

	sc = FUNC5(dev);
	sc->dev = dev;

	compat = FUNC7();
	constraints = (struct mpc85xx_constraints *)compat->ocd_data;
	cpu = FUNC8(FUNC4(dev));

	if (cpu <= 0) {
		FUNC6(dev,"No CPU device tree node!\n");
		return (ENXIO);
	}

	FUNC0(cpu, "reg", &sc->cpu, sizeof(sc->cpu));

	reg = FUNC2(GUTS_PORPLLSR);
	
	/*
	 * Assume power-on PLL is the highest PLL config supported on the
	 * board.
	 */
	sc->high = FUNC1(reg, sc->cpu);
	sc->min_freq = constraints->threshold;
	sc->low = constraints->min_mult;

	FUNC3(dev);
	return (0);
}