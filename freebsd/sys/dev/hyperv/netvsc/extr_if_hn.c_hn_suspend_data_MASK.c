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
struct hn_tx_ring {int hn_suspended; int /*<<< orphan*/  hn_txeof_task; int /*<<< orphan*/  hn_tx_taskq; int /*<<< orphan*/  hn_tx_task; int /*<<< orphan*/  hn_tx_lock; } ;
struct hn_softc {int hn_tx_ring_inuse; struct hn_tx_ring* hn_tx_ring; int /*<<< orphan*/  hn_rx_ring_inuse; int /*<<< orphan*/  hn_prichan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct hn_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct hn_tx_ring*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct hn_softc *sc)
{
	struct hn_tx_ring *txr;
	int i;

	FUNC0(sc);

	/*
	 * Suspend TX.
	 */
	for (i = 0; i < sc->hn_tx_ring_inuse; ++i) {
		txr = &sc->hn_tx_ring[i];

		FUNC4(&txr->hn_tx_lock);
		txr->hn_suspended = 1;
		FUNC5(&txr->hn_tx_lock);
		/* No one is able send more packets now. */

		/*
		 * Wait for all pending sends to finish.
		 *
		 * NOTE:
		 * We will _not_ receive all pending send-done, if the
		 * primary channel is revoked.
		 */
		while (FUNC3(txr) &&
		    !FUNC8(sc->hn_prichan))
			FUNC6("hnwtx", 1 /* 1 tick */);
	}

	/*
	 * Disable RX.
	 */
	FUNC1(sc);

	/*
	 * Drain RX/TX.
	 */
	FUNC2(sc, sc->hn_rx_ring_inuse);

	/*
	 * Drain any pending TX tasks.
	 *
	 * NOTE:
	 * The above hn_drain_rxtx() can dispatch TX tasks, so the TX
	 * tasks will have to be drained _after_ the above hn_drain_rxtx().
	 */
	for (i = 0; i < sc->hn_tx_ring_inuse; ++i) {
		txr = &sc->hn_tx_ring[i];

		FUNC7(txr->hn_tx_taskq, &txr->hn_tx_task);
		FUNC7(txr->hn_tx_taskq, &txr->hn_txeof_task);
	}
}