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
struct ifnet {int if_drv_flags; } ;
struct hn_softc {int hn_flags; int hn_tx_ring_inuse; scalar_t__ hn_pollhz; TYPE_1__* hn_tx_ring; struct ifnet* hn_ifp; } ;
struct TYPE_2__ {scalar_t__ hn_oactive; } ;

/* Variables and functions */
 int HN_FLAG_SYNTH_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (struct hn_softc*) ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hn_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct hn_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct hn_softc*) ; 
 scalar_t__ FUNC7 (struct hn_softc*) ; 

__attribute__((used)) static void
FUNC8(struct hn_softc *sc)
{
	struct ifnet *ifp = sc->hn_ifp;
	int i;

	FUNC0(sc);

	if ((sc->hn_flags & HN_FLAG_SYNTH_ATTACHED) == 0)
		return;

	if (ifp->if_drv_flags & IFF_DRV_RUNNING)
		return;

	/* Configure RX filter */
	FUNC5(sc);

	/* Clear OACTIVE bit. */
	FUNC1(&ifp->if_drv_flags, IFF_DRV_OACTIVE);
	for (i = 0; i < sc->hn_tx_ring_inuse; ++i)
		sc->hn_tx_ring[i].hn_oactive = 0;

	/* Clear TX 'suspended' bit. */
	FUNC4(sc, sc->hn_tx_ring_inuse);

	if (FUNC7(sc)) {
		/* Initialize transparent VF. */
		FUNC6(sc);
	}

	/* Everything is ready; unleash! */
	FUNC2(&ifp->if_drv_flags, IFF_DRV_RUNNING);

	/* Re-enable polling if requested. */
	if (sc->hn_pollhz > 0)
		FUNC3(sc, sc->hn_pollhz);
}