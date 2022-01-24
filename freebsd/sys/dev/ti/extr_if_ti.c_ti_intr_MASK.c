#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  ti_status_map; int /*<<< orphan*/  ti_status_tag; } ;
struct ti_softc {TYPE_1__ ti_cdata; struct ifnet* ti_ifp; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int FUNC0 (struct ti_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ti_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ti_softc*) ; 
 int /*<<< orphan*/  TI_MB_HOSTINTR ; 
 int TI_MHC_INTSTATE ; 
 int /*<<< orphan*/  TI_MISC_HOST_CTL ; 
 int /*<<< orphan*/  FUNC4 (struct ti_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ti_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ti_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC9 (struct ti_softc*) ; 

__attribute__((used)) static void
FUNC10(void *xsc)
{
	struct ti_softc *sc;
	struct ifnet *ifp;

	sc = xsc;
	FUNC3(sc);
	ifp = sc->ti_ifp;

	/* Make sure this is really our interrupt. */
	if (!(FUNC0(sc, TI_MISC_HOST_CTL) & TI_MHC_INTSTATE)) {
		FUNC4(sc);
		return;
	}

	/* Ack interrupt and stop others from occurring. */
	FUNC1(sc, TI_MB_HOSTINTR, 1);

	if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
		FUNC5(sc->ti_cdata.ti_status_tag,
		    sc->ti_cdata.ti_status_map, BUS_DMASYNC_POSTREAD);
		/* Check RX return ring producer/consumer */
		FUNC7(sc);

		/* Check TX ring producer/consumer */
		FUNC9(sc);
		FUNC5(sc->ti_cdata.ti_status_tag,
		    sc->ti_cdata.ti_status_map, BUS_DMASYNC_PREREAD);
	}

	FUNC6(sc);

	if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
		/* Re-enable interrupts. */
		FUNC1(sc, TI_MB_HOSTINTR, 0);
		if (!FUNC2(&ifp->if_snd))
			FUNC8(ifp);
	}

	FUNC4(sc);
}