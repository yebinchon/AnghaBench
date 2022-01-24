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
struct timespec {int /*<<< orphan*/  tv_nsec; scalar_t__ tv_sec; } ;
struct ds1553_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * res; int /*<<< orphan*/  rid; int /*<<< orphan*/  sc_bsh; int /*<<< orphan*/  sc_bst; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ds1553_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct ds1553_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct timespec ts;
	struct ds1553_softc *sc;
	int error;

	sc = FUNC4(dev);
	FUNC2(sc, sizeof(struct ds1553_softc));

	FUNC9(&sc->sc_mtx, "rtc_mtx", NULL, MTX_SPIN);

	sc->res = FUNC0(dev, SYS_RES_MEMORY, &sc->rid,
	    RF_ACTIVE);
	if (sc->res == NULL) {
		FUNC5(dev, "cannot allocate resources\n");
		FUNC8(&sc->sc_mtx);
		return (ENXIO);
	}

	sc->sc_bst = FUNC11(sc->res);
	sc->sc_bsh = FUNC10(sc->res);

	if ((error = FUNC6(dev)) != 0) {
		FUNC5(dev, "cannot attach time of day clock\n");
		FUNC1(dev, SYS_RES_MEMORY, sc->rid, sc->res);
		FUNC8(&sc->sc_mtx);
		return (error);
	}

	FUNC3(dev, 1000000);

	if (bootverbose) {
		FUNC7(dev, &ts);
		FUNC5(dev, "current time: %ld.%09ld\n",
		    (long)ts.tv_sec, ts.tv_nsec);
	}

	return (0);
}