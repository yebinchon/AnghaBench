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
struct chipc_caps {scalar_t__ pmu; } ;
struct bwn_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/ * sc_pmu; int /*<<< orphan*/ * sc_gpio; int /*<<< orphan*/ * sc_chipc; } ;

/* Variables and functions */
 struct chipc_caps* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BHND_SERVICE_CHIPC ; 
 int /*<<< orphan*/  BHND_SERVICE_GPIO ; 
 int /*<<< orphan*/  BHND_SERVICE_PMU ; 
 int ENXIO ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(struct bwn_softc *sc)
{
	struct chipc_caps *ccaps;

	sc->sc_chipc = FUNC1(sc->sc_dev, BHND_SERVICE_CHIPC);
	if (sc->sc_chipc == NULL) {
		FUNC3(sc->sc_dev, "ChipCommon device not found\n");
		goto failed;
	}

	ccaps = FUNC0(sc->sc_chipc);

	sc->sc_gpio = FUNC1(sc->sc_dev, BHND_SERVICE_GPIO);
	if (sc->sc_gpio == NULL) {
		FUNC3(sc->sc_dev, "GPIO device not found\n");
		goto failed;
	}

	if (ccaps->pmu) {
		sc->sc_pmu = FUNC1(sc->sc_dev, BHND_SERVICE_PMU);
		if (sc->sc_pmu == NULL) {
			FUNC3(sc->sc_dev, "PMU device not found\n");
			goto failed;
		}
	}

	return (0);

failed:
	FUNC2(sc);
	return (ENXIO);
}