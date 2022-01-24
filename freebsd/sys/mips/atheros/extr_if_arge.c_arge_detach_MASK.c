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
struct ifnet {int if_capenable; } ;
struct arge_softc {int arge_detach; int /*<<< orphan*/  arge_mtx; scalar_t__ arge_res; int /*<<< orphan*/  arge_rid; scalar_t__ arge_intrhand; int /*<<< orphan*/  arge_irq; scalar_t__ arge_miiproxy; scalar_t__ arge_miibus; int /*<<< orphan*/  arge_link_task; struct ifnet* arge_ifp; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct arge_softc*) ; 
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (struct arge_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct arge_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct arge_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_swi ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct arge_softc	*sc = FUNC9(dev);
	struct ifnet		*ifp = sc->arge_ifp;

	FUNC2(FUNC15(&sc->arge_mtx),
	    ("arge mutex not initialized"));

	/* These should only be active if attach succeeded */
	if (FUNC10(dev)) {
		FUNC0(sc);
		sc->arge_detach = 1;
#ifdef DEVICE_POLLING
		if (ifp->if_capenable & IFCAP_POLLING)
			ether_poll_deregister(ifp);
#endif

		FUNC4(sc);
		FUNC1(sc);
		FUNC16(taskqueue_swi, &sc->arge_link_task);
		FUNC11(ifp);
	}

	if (sc->arge_miibus)
		FUNC8(dev, sc->arge_miibus);

	if (sc->arge_miiproxy)
		FUNC8(dev, sc->arge_miiproxy);

	FUNC5(dev);

	if (sc->arge_intrhand)
		FUNC7(dev, sc->arge_irq, sc->arge_intrhand);

	if (sc->arge_res)
		FUNC6(dev, SYS_RES_MEMORY, sc->arge_rid,
		    sc->arge_res);

	if (ifp)
		FUNC13(ifp);

	FUNC3(sc);

	FUNC14(&sc->arge_mtx);

	return (0);

}