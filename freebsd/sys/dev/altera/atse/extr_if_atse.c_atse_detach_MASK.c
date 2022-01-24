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
struct ifnet {int dummy; } ;
struct atse_softc {int /*<<< orphan*/  xdma_rx; int /*<<< orphan*/  xdma_tx; int /*<<< orphan*/  xchan_rx; int /*<<< orphan*/  xchan_tx; int /*<<< orphan*/  atse_mtx; int /*<<< orphan*/ * atse_miibus; int /*<<< orphan*/  atse_tick; struct ifnet* atse_ifp; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atse_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct atse_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct atse_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct atse_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct atse_softc *sc;
	struct ifnet *ifp;

	sc = FUNC7(dev);
	FUNC2(FUNC12(&sc->atse_mtx), ("%s: mutex not initialized",
	    FUNC6(dev)));
	ifp = sc->atse_ifp;

	/* Only cleanup if attach succeeded. */
	if (FUNC8(dev)) {
		FUNC0(sc);
		FUNC3(sc);
		FUNC1(sc);
		FUNC4(&sc->atse_tick);
		FUNC9(ifp);
	}
	if (sc->atse_miibus != NULL) {
		FUNC5(dev, sc->atse_miibus);
	}

	if (ifp != NULL) {
		FUNC10(ifp);
	}

	FUNC11(&sc->atse_mtx);

	FUNC13(sc->xchan_tx);
	FUNC13(sc->xchan_rx);
	FUNC14(sc->xdma_tx);
	FUNC14(sc->xdma_rx);

	return (0);
}