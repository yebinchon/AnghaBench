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
struct pcr_softc {int nmodes; int /*<<< orphan*/ * pcr_vals; int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  modes ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct pcr_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct pcr_softc *sc;
	phandle_t cpu;
	uint32_t modes[3];
	int i;

	sc = FUNC7(dev);
	sc->dev = dev;

	cpu = FUNC9(FUNC6(dev));

	if (cpu <= 0) {
		FUNC8(dev,"No CPU device tree node!\n");
		return (ENXIO);
	}

	if (FUNC2(cpu, "power-mode-data") <= 0) {
		/* Use the first CPU's node */
		cpu = FUNC0(FUNC3(cpu));
	}

	/*
	 * Collect the PCR values for each mode from the device tree.
	 * These include bus timing information, and so cannot be
	 * directly computed.
	 */
	sc->nmodes = FUNC2(cpu, "power-mode-data");
	if (sc->nmodes <= 0 || sc->nmodes > sizeof(sc->pcr_vals)) {
		FUNC8(dev,"No power mode data in device tree!\n");
		return (ENXIO);
	}
	FUNC1(cpu, "power-mode-data", modes, sc->nmodes);
	sc->nmodes /= sizeof(modes[0]);

	/* Sort the modes */
	for (i = 0; i < sc->nmodes; i++)
		sc->pcr_vals[FUNC4(modes[i])] = modes[i];

	FUNC5(dev);
	return (0);
}