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
struct mbuf {int dummy; } ;
struct TYPE_2__ {scalar_t__ jme_tx_cnt; } ;
struct jme_softc {int jme_flags; int jme_txcsr; int /*<<< orphan*/  jme_watchdog_timer; TYPE_1__ jme_cdata; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; struct jme_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jme_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,struct mbuf*) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int JME_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC5 (struct jme_softc*) ; 
 int /*<<< orphan*/  JME_TXCSR ; 
 scalar_t__ JME_TX_DESC_HIWAT ; 
 int /*<<< orphan*/  JME_TX_TIMEOUT ; 
 int /*<<< orphan*/  TXCSR_TXQ0 ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int TXCSR_TX_ENB ; 
 scalar_t__ FUNC7 (struct jme_softc*,struct mbuf**) ; 
 int /*<<< orphan*/  FUNC8 (struct jme_softc*) ; 

__attribute__((used)) static void
FUNC9(struct ifnet *ifp)
{
        struct jme_softc *sc;
        struct mbuf *m_head;
	int enq;

	sc = ifp->if_softc;

	FUNC5(sc);

	if (sc->jme_cdata.jme_tx_cnt >= JME_TX_DESC_HIWAT)
		FUNC8(sc);

	if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING || (sc->jme_flags & JME_FLAG_LINK) == 0)
		return;

	for (enq = 0; !FUNC3(&ifp->if_snd); ) {
		FUNC2(&ifp->if_snd, m_head);
		if (m_head == NULL)
			break;
		/*
		 * Pack the data into the transmit ring. If we
		 * don't have room, set the OACTIVE flag and wait
		 * for the NIC to drain the ring.
		 */
		if (FUNC7(sc, &m_head)) {
			if (m_head == NULL)
				break;
			FUNC4(&ifp->if_snd, m_head);
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
			break;
		}

		enq++;
		/*
		 * If there's a BPF listener, bounce a copy of this frame
		 * to him.
		 */
		FUNC1(ifp, m_head);
	}

	if (enq > 0) {
		/*
		 * Reading TXCSR takes very long time under heavy load
		 * so cache TXCSR value and writes the ORed value with
		 * the kick command to the TXCSR. This saves one register
		 * access cycle.
		 */
		FUNC0(sc, JME_TXCSR, sc->jme_txcsr | TXCSR_TX_ENB |
		    FUNC6(TXCSR_TXQ0));
		/* Set a timeout in case the chip goes out to lunch. */
		sc->jme_watchdog_timer = JME_TX_TIMEOUT;
	}
}