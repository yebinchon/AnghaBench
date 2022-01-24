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
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; struct age_softc* if_softc; } ;
struct age_softc {int age_flags; int /*<<< orphan*/  age_watchdog_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct age_softc*) ; 
 int AGE_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct age_softc*) ; 
 int /*<<< orphan*/  AGE_TX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,struct mbuf*) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct mbuf*) ; 
 scalar_t__ FUNC6 (struct age_softc*,struct mbuf**) ; 

__attribute__((used)) static void
FUNC7(struct ifnet *ifp)
{
        struct age_softc *sc;
        struct mbuf *m_head;
	int enq;

	sc = ifp->if_softc;

	FUNC1(sc);

	if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING || (sc->age_flags & AGE_FLAG_LINK) == 0)
		return;

	for (enq = 0; !FUNC4(&ifp->if_snd); ) {
		FUNC3(&ifp->if_snd, m_head);
		if (m_head == NULL)
			break;
		/*
		 * Pack the data into the transmit ring. If we
		 * don't have room, set the OACTIVE flag and wait
		 * for the NIC to drain the ring.
		 */
		if (FUNC6(sc, &m_head)) {
			if (m_head == NULL)
				break;
			FUNC5(&ifp->if_snd, m_head);
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
			break;
		}

		enq++;
		/*
		 * If there's a BPF listener, bounce a copy of this frame
		 * to him.
		 */
		FUNC2(ifp, m_head);
	}

	if (enq > 0) {
		/* Update mbox. */
		FUNC0(sc);
		/* Set a timeout in case the chip goes out to lunch. */
		sc->age_watchdog_timer = AGE_TX_TIMEOUT;
	}
}