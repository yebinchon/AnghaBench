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
typedef  int uint32_t ;
struct jme_softc {int jme_morework; int jme_rxcsr; int /*<<< orphan*/  jme_int_task; int /*<<< orphan*/  jme_tq; int /*<<< orphan*/  jme_process_limit; struct ifnet* jme_ifp; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int FUNC0 (struct jme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int INTR_RXQ_COAL ; 
 int INTR_RXQ_COAL_TO ; 
 int INTR_RXQ_COMP ; 
 int INTR_RXQ_DESC_EMPTY ; 
 int INTR_TXQ_COAL ; 
 int INTR_TXQ_COAL_TO ; 
 int INTR_TXQ_COMP ; 
 int JME_INTRS ; 
 int /*<<< orphan*/  JME_INTR_MASK_SET ; 
 int /*<<< orphan*/  JME_INTR_STATUS ; 
 int /*<<< orphan*/  FUNC3 (struct jme_softc*) ; 
 int /*<<< orphan*/  JME_RXCSR ; 
 int /*<<< orphan*/  FUNC4 (struct jme_softc*) ; 
 int RXCSR_RXQ_START ; 
 int RXCSR_RX_ENB ; 
 int FUNC5 (struct jme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(void *arg, int pending)
{
	struct jme_softc *sc;
	struct ifnet *ifp;
	uint32_t status;
	int more;

	sc = (struct jme_softc *)arg;
	ifp = sc->jme_ifp;

	FUNC3(sc);
	status = FUNC0(sc, JME_INTR_STATUS);
	if (sc->jme_morework != 0) {
		sc->jme_morework = 0;
		status |= INTR_RXQ_COAL | INTR_RXQ_COAL_TO;
	}
	if ((status & JME_INTRS) == 0 || status == 0xFFFFFFFF)
		goto done;
	/* Reset PCC counter/timer and Ack interrupts. */
	status &= ~(INTR_TXQ_COMP | INTR_RXQ_COMP);
	if ((status & (INTR_TXQ_COAL | INTR_TXQ_COAL_TO)) != 0)
		status |= INTR_TXQ_COAL | INTR_TXQ_COAL_TO | INTR_TXQ_COMP;
	if ((status & (INTR_RXQ_COAL | INTR_RXQ_COAL_TO)) != 0)
		status |= INTR_RXQ_COAL | INTR_RXQ_COAL_TO | INTR_RXQ_COMP;
	FUNC1(sc, JME_INTR_STATUS, status);
	more = 0;
	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
		if ((status & (INTR_RXQ_COAL | INTR_RXQ_COAL_TO)) != 0) {
			more = FUNC5(sc, sc->jme_process_limit);
			if (more != 0)
				sc->jme_morework = 1;
		}
		if ((status & INTR_RXQ_DESC_EMPTY) != 0) {
			/*
			 * Notify hardware availability of new Rx
			 * buffers.
			 * Reading RXCSR takes very long time under
			 * heavy load so cache RXCSR value and writes
			 * the ORed value with the kick command to
			 * the RXCSR. This saves one register access
			 * cycle.
			 */
			FUNC1(sc, JME_RXCSR, sc->jme_rxcsr |
			    RXCSR_RX_ENB | RXCSR_RXQ_START);
		}
		if (!FUNC2(&ifp->if_snd))
			FUNC6(ifp);
	}

	if (more != 0 || (FUNC0(sc, JME_INTR_STATUS) & JME_INTRS) != 0) {
		FUNC7(sc->jme_tq, &sc->jme_int_task);
		FUNC4(sc);
		return;
	}
done:
	FUNC4(sc);

	/* Reenable interrupts. */
	FUNC1(sc, JME_INTR_MASK_SET, JME_INTRS);
}