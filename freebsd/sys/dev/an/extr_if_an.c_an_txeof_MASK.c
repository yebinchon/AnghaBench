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
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;
struct TYPE_2__ {int* an_tx_ring; scalar_t__ an_tx_cons; int an_tx_empty; scalar_t__ an_tx_prod; } ;
struct an_softc {TYPE_1__ an_rdata; int /*<<< orphan*/  mpi350; scalar_t__ an_timer; struct ifnet* an_ifp; } ;

/* Variables and functions */
 int AN_EV_TX_EXC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct an_softc*) ; 
 int AN_MAX_TX_DESC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int AN_TX_RING_CNT ; 
 int FUNC3 (struct an_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct an_softc *sc, int status)
{
	struct ifnet		*ifp;
	int			id, i;

	FUNC1(sc);
	ifp = sc->an_ifp;

	sc->an_timer = 0;
	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

	if (!sc->mpi350) {
		id = FUNC3(sc, FUNC2(sc->mpi350));

		if (status & AN_EV_TX_EXC) {
			FUNC4(ifp, IFCOUNTER_OERRORS, 1);
		} else
			FUNC4(ifp, IFCOUNTER_OPACKETS, 1);

		for (i = 0; i < AN_TX_RING_CNT; i++) {
			if (id == sc->an_rdata.an_tx_ring[i]) {
				sc->an_rdata.an_tx_ring[i] = 0;
				break;
			}
		}

		FUNC0(sc->an_rdata.an_tx_cons, AN_TX_RING_CNT);
	} else { /* MPI 350 */
		id = FUNC3(sc, FUNC2(sc->mpi350));
		if (!sc->an_rdata.an_tx_empty){
			if (status & AN_EV_TX_EXC) {
				FUNC4(ifp, IFCOUNTER_OERRORS, 1);
			} else
				FUNC4(ifp, IFCOUNTER_OPACKETS, 1);
			FUNC0(sc->an_rdata.an_tx_cons, AN_MAX_TX_DESC);
			if (sc->an_rdata.an_tx_prod ==
			    sc->an_rdata.an_tx_cons)
				sc->an_rdata.an_tx_empty = 1;
		}
	}

	return;
}