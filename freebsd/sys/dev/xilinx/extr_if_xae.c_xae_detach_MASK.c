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
struct xae_softc {int /*<<< orphan*/  xdma_rx; int /*<<< orphan*/  xdma_tx; int /*<<< orphan*/  xchan_rx; int /*<<< orphan*/  xchan_tx; int /*<<< orphan*/ * res; int /*<<< orphan*/  intr_cookie; int /*<<< orphan*/  mtx; int /*<<< orphan*/ * miibus; int /*<<< orphan*/  xae_callout; struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct xae_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct xae_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct xae_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xae_spec ; 
 int /*<<< orphan*/  FUNC14 (struct xae_softc*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct xae_softc *sc;
	struct ifnet *ifp;

	sc = FUNC8(dev);

	FUNC0(FUNC13(&sc->mtx), ("%s: mutex not initialized",
	    FUNC7(dev)));

	ifp = sc->ifp;

	/* Only cleanup if attach succeeded. */
	if (FUNC9(dev)) {
		FUNC1(sc);
		FUNC14(sc);
		FUNC2(sc);
		FUNC5(&sc->xae_callout);
		FUNC10(ifp);
	}

	if (sc->miibus != NULL)
		FUNC6(dev, sc->miibus);

	if (ifp != NULL)
		FUNC11(ifp);

	FUNC12(&sc->mtx);

	FUNC4(dev, sc->res[1], sc->intr_cookie);

	FUNC3(dev, xae_spec, sc->res);

	FUNC15(sc->xchan_tx);
	FUNC15(sc->xchan_rx);
	FUNC16(sc->xdma_tx);
	FUNC16(sc->xdma_rx);

	return (0);
}