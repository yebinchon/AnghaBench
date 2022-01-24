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
struct resource {int dummy; } ;
struct auxio_softc {int sc_nauxio; int* sc_rid; int sc_led_stat; int /*<<< orphan*/  sc_led_dev; int /*<<< orphan*/ * sc_regh; int /*<<< orphan*/ * sc_regt; struct resource** sc_res; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int AUXIO_LED_LED ; 
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct auxio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct auxio_softc*,int) ; 
 int FUNC2 (struct auxio_softc*) ; 
 struct resource* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  (*) (struct auxio_softc*,int),struct auxio_softc*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 

__attribute__((used)) static int
FUNC8(struct auxio_softc *sc)
{
	struct resource *res;
	int i;

	for (i = 0; i < sc->sc_nauxio; i++) {
		sc->sc_rid[i] = i;
		res = FUNC3(sc->sc_dev, SYS_RES_MEMORY,
		    &sc->sc_rid[i], RF_ACTIVE);
		if (res == NULL) {
			FUNC4(sc->sc_dev,
			    "could not allocate resources\n");
			goto attach_fail;
		}
		sc->sc_res[i] = res;
		sc->sc_regt[i] = FUNC7(res);
		sc->sc_regh[i] = FUNC6(res);
	}

	sc->sc_led_stat = FUNC2(sc) & AUXIO_LED_LED;
	sc->sc_led_dev = FUNC5(auxio_led_func, sc, "auxioled");
	/* turn on the LED */
	FUNC1(sc, 1);

	return (0);

attach_fail:
	FUNC0(sc);

	return (ENXIO);
}