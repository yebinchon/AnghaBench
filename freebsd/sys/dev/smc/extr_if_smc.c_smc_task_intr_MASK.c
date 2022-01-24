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
typedef  int u_int ;
struct smc_softc {int smc_mask; int /*<<< orphan*/  smc_tx; int /*<<< orphan*/  smc_tq; int /*<<< orphan*/  smc_watchdog; int /*<<< orphan*/  smc_rx; int /*<<< orphan*/  smc_dev; } ;
struct ifnet {int if_capenable; struct smc_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACK ; 
 int ALLOC_INT ; 
 int /*<<< orphan*/  ECR ; 
 int ECR_MULCOL_MASK ; 
 int ECR_MULCOL_SHIFT ; 
 int ECR_SNGLCOL_MASK ; 
 int ECR_SNGLCOL_SHIFT ; 
 int /*<<< orphan*/  EPHSR ; 
 int EPHSR_TX_SUC ; 
 int FIFO_EMPTY ; 
 int /*<<< orphan*/  FIFO_TX ; 
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  IFCOUNTER_COLLISIONS ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IST ; 
 int /*<<< orphan*/  MMUCR ; 
 int MMUCR_CMD_RELEASE_PKT ; 
 int /*<<< orphan*/  MSK ; 
 int /*<<< orphan*/  PNR ; 
 int /*<<< orphan*/  PTR ; 
 int PTR_AUTO_INCR ; 
 int PTR_READ ; 
 int RCV_INT ; 
 int RX_OVRN_INT ; 
 int /*<<< orphan*/  FUNC0 (struct smc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct smc_softc*) ; 
 int /*<<< orphan*/  TCR ; 
 int TCR_PAD_EN ; 
 int TCR_TXENA ; 
 int TX_EMPTY_INT ; 
 int TX_INT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct smc_softc*) ; 
 int FUNC6 (struct smc_softc*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct smc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct smc_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct smc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct smc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(void *context, int pending)
{
	struct smc_softc	*sc;
	struct ifnet		*ifp;
	u_int			status, packet, counter, tcr;

	(void)pending;
	ifp = (struct ifnet *)context;
	sc = ifp->if_softc;

	FUNC0(sc);
	
	FUNC8(sc, 2);

	/*
	 * Find out what interrupts are flagged.
	 */
	status = FUNC6(sc, IST) & sc->smc_mask;

	/*
	 * Transmit error
	 */
	if (status & TX_INT) {
		/*
		 * Kill off the packet if there is one and re-enable transmit.
		 */
		packet = FUNC6(sc, FIFO_TX);
		if ((packet & FIFO_EMPTY) == 0) {
			FUNC2(&sc->smc_watchdog);
			FUNC8(sc, 2);
			FUNC9(sc, PNR, packet);
			FUNC10(sc, PTR, 0 | PTR_READ | 
			    PTR_AUTO_INCR);
			FUNC8(sc, 0);
			tcr = FUNC7(sc, EPHSR);
#if 0
			if ((tcr & EPHSR_TX_SUC) == 0)
				device_printf(sc->smc_dev,
				    "bad packet\n");
#endif
			FUNC8(sc, 2);
			FUNC5(sc);
			FUNC10(sc, MMUCR, MMUCR_CMD_RELEASE_PKT);

			FUNC8(sc, 0);
			tcr = FUNC7(sc, TCR);
			tcr |= TCR_TXENA | TCR_PAD_EN;
			FUNC10(sc, TCR, tcr);
			FUNC8(sc, 2);
			FUNC11(sc->smc_tq, &sc->smc_tx);
		}

		/*
		 * Ack the interrupt.
		 */
		FUNC9(sc, ACK, TX_INT);
	}

	/*
	 * Receive
	 */
	if (status & RCV_INT) {
		FUNC9(sc, ACK, RCV_INT);
		sc->smc_mask &= ~RCV_INT;
		FUNC11(sc->smc_tq, &sc->smc_rx);
	}

	/*
	 * Allocation
	 */
	if (status & ALLOC_INT) {
		FUNC9(sc, ACK, ALLOC_INT);
		sc->smc_mask &= ~ALLOC_INT;
		FUNC11(sc->smc_tq, &sc->smc_tx);
	}

	/*
	 * Receive overrun
	 */
	if (status & RX_OVRN_INT) {
		FUNC9(sc, ACK, RX_OVRN_INT);
		FUNC4(ifp, IFCOUNTER_IERRORS, 1);
	}

	/*
	 * Transmit empty
	 */
	if (status & TX_EMPTY_INT) {
		FUNC9(sc, ACK, TX_EMPTY_INT);
		sc->smc_mask &= ~TX_EMPTY_INT;
		FUNC2(&sc->smc_watchdog);

		/*
		 * Update collision stats.
		 */
		FUNC8(sc, 0);
		counter = FUNC7(sc, ECR);
		FUNC8(sc, 2);
		FUNC4(ifp, IFCOUNTER_COLLISIONS,
		    ((counter & ECR_SNGLCOL_MASK) >> ECR_SNGLCOL_SHIFT) +
		    ((counter & ECR_MULCOL_MASK) >> ECR_MULCOL_SHIFT));

		/*
		 * See if there are any packets to transmit.
		 */
		FUNC11(sc->smc_tq, &sc->smc_tx);
	}

	/*
	 * Update the interrupt mask.
	 */
	FUNC8(sc, 2);
	if ((ifp->if_capenable & IFCAP_POLLING) == 0)
		FUNC9(sc, MSK, sc->smc_mask);

	FUNC1(sc);
}