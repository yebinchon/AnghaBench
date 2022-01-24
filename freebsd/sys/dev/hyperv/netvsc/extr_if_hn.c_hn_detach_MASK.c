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
struct ifnet {int if_drv_flags; } ;
struct hn_softc {int hn_flags; int /*<<< orphan*/  hn_vf_lock; int /*<<< orphan*/ * hn_xact; int /*<<< orphan*/  hn_prichan; int /*<<< orphan*/ * hn_vf_taskq; int /*<<< orphan*/ * hn_mgmt_taskq0; int /*<<< orphan*/ ** hn_tx_taskqs; int /*<<< orphan*/  hn_media; struct ifnet* hn_vf_ifp; int /*<<< orphan*/ * hn_ifnet_lnkhand; int /*<<< orphan*/ * hn_ifnet_dethand; int /*<<< orphan*/ * hn_ifnet_atthand; int /*<<< orphan*/ * hn_ifnet_evthand; int /*<<< orphan*/ * hn_ifaddr_evthand; struct ifnet* hn_ifp; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int HN_FLAG_SYNTH_ATTACHED ; 
 int /*<<< orphan*/  FUNC1 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct hn_softc*) ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct hn_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ether_ifattach_event ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct hn_softc*,struct ifnet*) ; 
 int /*<<< orphan*/  FUNC12 (struct hn_softc*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct hn_softc*) ; 
 int hn_tx_taskq_cnt ; 
 int /*<<< orphan*/ ** hn_tx_taskque ; 
 int /*<<< orphan*/  FUNC15 (struct ifnet*) ; 
 int /*<<< orphan*/  ifaddr_event ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ifnet_departure_event ; 
 int /*<<< orphan*/  ifnet_event ; 
 int /*<<< orphan*/  ifnet_link_event ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC23(device_t dev)
{
	struct hn_softc *sc = FUNC5(dev);
	struct ifnet *ifp = sc->hn_ifp, *vf_ifp;

	if (sc->hn_xact != NULL && FUNC19(sc->hn_prichan)) {
		/*
		 * In case that the vmbus missed the orphan handler
		 * installation.
		 */
		FUNC22(sc->hn_xact);
	}

	if (sc->hn_ifaddr_evthand != NULL)
		FUNC0(ifaddr_event, sc->hn_ifaddr_evthand);
	if (sc->hn_ifnet_evthand != NULL)
		FUNC0(ifnet_event, sc->hn_ifnet_evthand);
	if (sc->hn_ifnet_atthand != NULL) {
		FUNC0(ether_ifattach_event,
		    sc->hn_ifnet_atthand);
	}
	if (sc->hn_ifnet_dethand != NULL) {
		FUNC0(ifnet_departure_event,
		    sc->hn_ifnet_dethand);
	}
	if (sc->hn_ifnet_lnkhand != NULL)
		FUNC0(ifnet_link_event, sc->hn_ifnet_lnkhand);

	vf_ifp = sc->hn_vf_ifp;
	FUNC4();
	if (vf_ifp != NULL)
		FUNC11(sc, vf_ifp);

	if (FUNC6(dev)) {
		FUNC1(sc);
		if (sc->hn_flags & HN_FLAG_SYNTH_ATTACHED) {
			if (ifp->if_drv_flags & IFF_DRV_RUNNING)
				FUNC12(sc, true);
			/*
			 * NOTE:
			 * hn_stop() only suspends data, so managment
			 * stuffs have to be suspended manually here.
			 */
			FUNC13(sc);
			FUNC14(sc);
		}
		FUNC3(sc);
		FUNC7(ifp);
	}

	FUNC16(&sc->hn_media);
	FUNC9(sc);
	FUNC10(sc);

	if (sc->hn_tx_taskqs != NULL && sc->hn_tx_taskqs != hn_tx_taskque) {
		int i;

		for (i = 0; i < hn_tx_taskq_cnt; ++i)
			FUNC18(sc->hn_tx_taskqs[i]);
		FUNC8(sc->hn_tx_taskqs, M_DEVBUF);
	}
	FUNC18(sc->hn_mgmt_taskq0);
	if (sc->hn_vf_taskq != NULL)
		FUNC18(sc->hn_vf_taskq);

	if (sc->hn_xact != NULL) {
		/*
		 * Uninstall the orphan handler _before_ the xact is
		 * destructed.
		 */
		FUNC20(sc->hn_prichan);
		FUNC21(sc->hn_xact);
	}

	FUNC15(ifp);

	FUNC2(sc);
	FUNC17(&sc->hn_vf_lock);
	return (0);
}