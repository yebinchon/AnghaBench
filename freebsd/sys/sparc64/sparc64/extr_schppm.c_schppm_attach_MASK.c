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
struct schppm_softc {int /*<<< orphan*/  sc_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  SCHPPM_ESTAR ; 
 int /*<<< orphan*/  SCHPPM_ESTAR_CTRL ; 
#define  SCHPPM_ESTAR_CTRL_1 130 
#define  SCHPPM_ESTAR_CTRL_2 129 
#define  SCHPPM_ESTAR_CTRL_32 128 
 int SCHPPM_ESTAR_CTRL_MASK ; 
 int FUNC0 (struct schppm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct schppm_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  schppm_res_spec ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct schppm_softc *sc;

	sc = FUNC3(dev);
	if (FUNC1(dev, schppm_res_spec, sc->sc_res)) {
		FUNC4(dev, "failed to allocate resources\n");
		FUNC2(dev, schppm_res_spec, sc->sc_res);
		return (ENXIO);
	}

	if (bootverbose) {
		FUNC4(dev, "running at ");
		switch (FUNC0(sc, SCHPPM_ESTAR, SCHPPM_ESTAR_CTRL) &
		    SCHPPM_ESTAR_CTRL_MASK) {
		case SCHPPM_ESTAR_CTRL_1:
			FUNC5("full");
			break;
		case SCHPPM_ESTAR_CTRL_2:
			FUNC5("half");
			break;
		case SCHPPM_ESTAR_CTRL_32:
			FUNC5("1/32");
			break;
		default:
			FUNC5("unknown");
			break;
		}
		FUNC5(" speed\n");
	}

	return (0);
}