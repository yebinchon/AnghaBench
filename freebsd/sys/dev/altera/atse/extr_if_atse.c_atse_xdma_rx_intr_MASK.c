#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ error; int /*<<< orphan*/  transferred; } ;
typedef  TYPE_2__ xdma_transfer_status_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {struct ifnet* rcvif; int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_1__ m_pkthdr; int /*<<< orphan*/  m_len; } ;
struct ifnet {int /*<<< orphan*/  (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct atse_softc {int /*<<< orphan*/  xchan_rx; struct ifnet* atse_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atse_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct atse_softc*) ; 
 int /*<<< orphan*/  ETHER_ALIGN ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  FUNC2 (struct atse_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,struct mbuf*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct mbuf**,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC8(void *arg, xdma_transfer_status_t *status)
{
	xdma_transfer_status_t st;
	struct atse_softc *sc;
	struct ifnet *ifp;
	struct mbuf *m;
	int err;
	uint32_t cnt_processed;

	sc = arg;

	FUNC0(sc);

	ifp = sc->atse_ifp;

	cnt_processed = 0;
	for (;;) {
		err = FUNC7(sc->xchan_rx, &m, &st);
		if (err != 0) {
			break;
		}
		cnt_processed++;

		if (st.error != 0) {
			FUNC3(ifp, IFCOUNTER_IERRORS, 1);
			FUNC5(m);
			continue;
		}

		m->m_pkthdr.len = m->m_len = st.transferred;
		m->m_pkthdr.rcvif = ifp;
		FUNC4(m, ETHER_ALIGN);
		FUNC1(sc);
		(*ifp->if_input)(ifp, m);
		FUNC0(sc);
	}

	FUNC2(sc, cnt_processed);

	FUNC1(sc);

	return (0);
}