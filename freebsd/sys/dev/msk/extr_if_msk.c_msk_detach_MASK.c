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
struct msk_softc {int /*<<< orphan*/ ** msk_if; int /*<<< orphan*/  msk_mtx; } ;
struct msk_if_softc {size_t msk_port; struct msk_softc* msk_softc; int /*<<< orphan*/  msk_tick_ch; int /*<<< orphan*/  msk_flags; struct ifnet* msk_ifp; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MSK_FLAG_DETACH ; 
 int /*<<< orphan*/  FUNC1 (struct msk_if_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct msk_if_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct msk_if_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC9 (struct msk_if_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct msk_if_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct msk_if_softc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct msk_softc *sc;
	struct msk_if_softc *sc_if;
	struct ifnet *ifp;

	sc_if = FUNC5(dev);
	FUNC0(FUNC12(&sc_if->msk_softc->msk_mtx),
	    ("msk mutex not initialized in msk_detach"));
	FUNC1(sc_if);

	ifp = sc_if->msk_ifp;
	if (FUNC6(dev)) {
		/* XXX */
		sc_if->msk_flags |= MSK_FLAG_DETACH;
		FUNC10(sc_if);
		/* Can't hold locks while calling detach. */
		FUNC2(sc_if);
		FUNC4(&sc_if->msk_tick_ch);
		if (ifp)
			FUNC7(ifp);
		FUNC1(sc_if);
	}

	/*
	 * We're generally called from mskc_detach() which is using
	 * device_delete_child() to get to here. It's already trashed
	 * miibus for us, so don't do it here or we'll panic.
	 *
	 * if (sc_if->msk_miibus != NULL) {
	 * 	device_delete_child(dev, sc_if->msk_miibus);
	 * 	sc_if->msk_miibus = NULL;
	 * }
	 */

	FUNC9(sc_if);
	FUNC11(sc_if);
	FUNC3(dev);

	sc = sc_if->msk_softc;
	sc->msk_if[sc_if->msk_port] = NULL;
	FUNC2(sc_if);
	if (ifp)
		FUNC8(ifp);

	return (0);
}