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
typedef  int uint16_t ;
struct vte_softc {int vte_flags; int vte_int_rx_mod; int vte_int_tx_mod; struct ifnet* vte_ifp; int /*<<< orphan*/  vte_miibus; } ;
struct mii_data {int mii_media_status; int /*<<< orphan*/  mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vte_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_DRV_RUNNING ; 
#define  IFM_100_TX 129 
#define  IFM_10_T 128 
 int IFM_ACTIVE ; 
 int IFM_AVALID ; 
 int const FUNC1 (int /*<<< orphan*/ ) ; 
 int VTE_FLAG_LINK ; 
 int VTE_IM_BUNDLE_SHIFT ; 
 int VTE_IM_TIMER_SHIFT ; 
 int /*<<< orphan*/  VTE_MRICR ; 
 int /*<<< orphan*/  VTE_MTICR ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vte_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct vte_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct vte_softc*) ; 

__attribute__((used)) static void
FUNC6(device_t dev)
{
	struct vte_softc *sc;
	struct mii_data *mii;
	struct ifnet *ifp;
	uint16_t val;

	sc = FUNC2(dev);

	mii = FUNC2(sc->vte_miibus);
	ifp = sc->vte_ifp;
	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
		return;

	sc->vte_flags &= ~VTE_FLAG_LINK;
	if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
	    (IFM_ACTIVE | IFM_AVALID)) {
		switch (FUNC1(mii->mii_media_active)) {
		case IFM_10_T:
		case IFM_100_TX:
			sc->vte_flags |= VTE_FLAG_LINK;
			break;
		default:
			break;
		}
	}

	/* Stop RX/TX MACs. */
	FUNC5(sc);
	/* Program MACs with resolved duplex and flow control. */
	if ((sc->vte_flags & VTE_FLAG_LINK) != 0) {
		/*
		 * Timer waiting time : (63 + TIMER * 64) MII clock.
		 * MII clock : 25MHz(100Mbps) or 2.5MHz(10Mbps).
		 */
		if (FUNC1(mii->mii_media_active) == IFM_100_TX)
			val = 18 << VTE_IM_TIMER_SHIFT;
		else
			val = 1 << VTE_IM_TIMER_SHIFT;
		val |= sc->vte_int_rx_mod << VTE_IM_BUNDLE_SHIFT;
		/* 48.6us for 100Mbps, 50.8us for 10Mbps */
		FUNC0(sc, VTE_MRICR, val);

		if (FUNC1(mii->mii_media_active) == IFM_100_TX)
			val = 18 << VTE_IM_TIMER_SHIFT;
		else
			val = 1 << VTE_IM_TIMER_SHIFT;
		val |= sc->vte_int_tx_mod << VTE_IM_BUNDLE_SHIFT;
		/* 48.6us for 100Mbps, 50.8us for 10Mbps */
		FUNC0(sc, VTE_MTICR, val);

		FUNC3(sc);
		FUNC4(sc);
	}
}