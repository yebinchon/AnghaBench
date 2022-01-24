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
struct nge_softc {int /*<<< orphan*/ * nge_res; int /*<<< orphan*/  nge_res_id; int /*<<< orphan*/  nge_res_type; int /*<<< orphan*/ * nge_irq; int /*<<< orphan*/ * nge_intrhand; int /*<<< orphan*/ * nge_miibus; int /*<<< orphan*/  nge_stat_ch; int /*<<< orphan*/  nge_flags; struct ifnet* nge_ifp; } ;
struct ifnet {int if_capenable; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  NGE_FLAG_DETACH ; 
 int /*<<< orphan*/  FUNC0 (struct nge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct nge_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct nge_softc*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nge_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC13 (struct nge_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct nge_softc*) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct nge_softc *sc;
	struct ifnet *ifp;

	sc = FUNC8(dev);
	ifp = sc->nge_ifp;

#ifdef DEVICE_POLLING
	if (ifp != NULL && ifp->if_capenable & IFCAP_POLLING)
		ether_poll_deregister(ifp);
#endif

	if (FUNC9(dev)) {
		FUNC0(sc);
		sc->nge_flags |= NGE_FLAG_DETACH;
		FUNC14(sc);
		FUNC2(sc);
		FUNC6(&sc->nge_stat_ch);
		if (ifp != NULL)
			FUNC10(ifp);
	}

	if (sc->nge_miibus != NULL) {
		FUNC7(dev, sc->nge_miibus);
		sc->nge_miibus = NULL;
	}
	FUNC3(dev);
	if (sc->nge_intrhand != NULL)
		FUNC5(dev, sc->nge_irq, sc->nge_intrhand);
	if (sc->nge_irq != NULL)
		FUNC4(dev, SYS_RES_IRQ, 0, sc->nge_irq);
	if (sc->nge_res != NULL)
		FUNC4(dev, sc->nge_res_type, sc->nge_res_id,
		    sc->nge_res);

	FUNC13(sc);
	if (ifp != NULL)
		FUNC12(ifp);

	FUNC1(sc);

	return (0);
}