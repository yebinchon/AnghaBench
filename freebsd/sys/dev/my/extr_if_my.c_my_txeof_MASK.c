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
typedef  int u_int32_t ;
struct TYPE_2__ {struct my_chain* my_tx_head; struct my_chain* my_tx_tail; } ;
struct my_softc {TYPE_1__ my_cdata; scalar_t__ my_timer; struct ifnet* my_ifp; } ;
struct my_chain {struct my_chain* my_nextdesc; int /*<<< orphan*/ * my_mbuf; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct my_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFCOUNTER_COLLISIONS ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int MY_EC ; 
 int MY_Enhanced ; 
 int MY_LC ; 
 int /*<<< orphan*/  FUNC1 (struct my_softc*) ; 
 int MY_NCRMASK ; 
 int MY_NCRMask ; 
 int MY_NCRShift ; 
 int MY_OWNByNIC ; 
 int /*<<< orphan*/  MY_TCRRCR ; 
 int /*<<< orphan*/  MY_TSR ; 
 int MY_TXERR ; 
 int FUNC2 (struct my_chain*) ; 
 int MY_UNSENT ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct my_softc * sc)
{
	struct my_chain *cur_tx;
	struct ifnet   *ifp;

	FUNC1(sc);
	ifp = sc->my_ifp;
	/* Clear the timeout timer. */
	sc->my_timer = 0;
	if (sc->my_cdata.my_tx_head == NULL) {
		return;
	}
	/*
	 * Go through our tx list and free mbufs for those frames that have
	 * been transmitted.
	 */
	while (sc->my_cdata.my_tx_head->my_mbuf != NULL) {
		u_int32_t       txstat;

		cur_tx = sc->my_cdata.my_tx_head;
		txstat = FUNC2(cur_tx);
		if ((txstat & MY_OWNByNIC) || txstat == MY_UNSENT)
			break;
		if (!(FUNC0(sc, MY_TCRRCR) & MY_Enhanced)) {
			if (txstat & MY_TXERR) {
				FUNC3(ifp, IFCOUNTER_OERRORS, 1);
				if (txstat & MY_EC) /* excessive collision */
					FUNC3(ifp, IFCOUNTER_COLLISIONS, 1);
				if (txstat & MY_LC)	/* late collision */
					FUNC3(ifp, IFCOUNTER_COLLISIONS, 1);
			}
			FUNC3(ifp, IFCOUNTER_COLLISIONS,
			    (txstat & MY_NCRMASK) >> MY_NCRShift);
		}
		FUNC3(ifp, IFCOUNTER_OPACKETS, 1);
		FUNC4(cur_tx->my_mbuf);
		cur_tx->my_mbuf = NULL;
		if (sc->my_cdata.my_tx_head == sc->my_cdata.my_tx_tail) {
			sc->my_cdata.my_tx_head = NULL;
			sc->my_cdata.my_tx_tail = NULL;
			break;
		}
		sc->my_cdata.my_tx_head = cur_tx->my_nextdesc;
	}
	if (FUNC0(sc, MY_TCRRCR) & MY_Enhanced) {
		FUNC3(ifp, IFCOUNTER_COLLISIONS, (FUNC0(sc, MY_TSR) & MY_NCRMask));
	}
	return;
}