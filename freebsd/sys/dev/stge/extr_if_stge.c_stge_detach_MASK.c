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
struct stge_softc {int sc_detach; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_mii_mtx; int /*<<< orphan*/ * sc_res; int /*<<< orphan*/  sc_spec; int /*<<< orphan*/ * sc_ih; struct ifnet* sc_ifp; int /*<<< orphan*/ * sc_miibus; int /*<<< orphan*/  sc_link_task; int /*<<< orphan*/  sc_tick_ch; } ;
struct ifnet {int if_capenable; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  FUNC0 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct stge_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_swi ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct stge_softc *sc;
	struct ifnet *ifp;

	sc = FUNC7(dev);

	ifp = sc->sc_ifp;
#ifdef DEVICE_POLLING
	if (ifp && ifp->if_capenable & IFCAP_POLLING)
		ether_poll_deregister(ifp);
#endif
	if (FUNC8(dev)) {
		FUNC0(sc);
		/* XXX */
		sc->sc_detach = 1;
		FUNC14(sc);
		FUNC1(sc);
		FUNC5(&sc->sc_tick_ch);
		FUNC15(taskqueue_swi, &sc->sc_link_task);
		FUNC9(ifp);
	}

	if (sc->sc_miibus != NULL) {
		FUNC6(dev, sc->sc_miibus);
		sc->sc_miibus = NULL;
	}
	FUNC2(dev);
	FUNC13(sc);

	if (ifp != NULL) {
		FUNC11(ifp);
		sc->sc_ifp = NULL;
	}

	if (sc->sc_ih) {
		FUNC4(dev, sc->sc_res[1], sc->sc_ih);
		sc->sc_ih = NULL;
	}
	FUNC3(dev, sc->sc_spec, sc->sc_res);

	FUNC12(&sc->sc_mii_mtx);
	FUNC12(&sc->sc_mtx);

	return (0);
}