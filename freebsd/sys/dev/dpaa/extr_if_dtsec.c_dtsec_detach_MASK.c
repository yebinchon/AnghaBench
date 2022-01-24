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
struct dtsec_softc {scalar_t__ sc_mode; int /*<<< orphan*/  sc_lock; int /*<<< orphan*/ * sc_ifnet; } ;
typedef  int /*<<< orphan*/ * if_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dtsec_softc*) ; 
 scalar_t__ DTSEC_MODE_REGULAR ; 
 int /*<<< orphan*/  FUNC1 (struct dtsec_softc*) ; 
 struct dtsec_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dtsec_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct dtsec_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct dtsec_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct dtsec_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct dtsec_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct dtsec_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct dtsec_softc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int
FUNC14(device_t dev)
{
	struct dtsec_softc *sc;
	if_t ifp;

	sc = FUNC2(dev);
	ifp = sc->sc_ifnet;

	if (FUNC3(dev)) {
		FUNC11(ifp);
		/* Shutdown interface */
		FUNC0(sc);
		FUNC6(sc);
		FUNC1(sc);
	}

	if (sc->sc_ifnet) {
		FUNC12(sc->sc_ifnet);
		sc->sc_ifnet = NULL;
	}

	if (sc->sc_mode == DTSEC_MODE_REGULAR) {
		/* Free RX/TX FQRs */
		FUNC8(sc);
		FUNC9(sc);

		/* Free frame info pool */
		FUNC7(sc);

		/* Free RX buffer pool */
		FUNC10(sc);
	}

	FUNC4(sc);
	FUNC5(sc);

	/* Destroy lock */
	FUNC13(&sc->sc_lock);

	return (0);
}