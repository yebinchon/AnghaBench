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
struct et_txstatus_data {int /*<<< orphan*/  txsd_paddr; } ;
struct et_txdesc_ring {scalar_t__ tr_ready_wrap; scalar_t__ tr_ready_index; int /*<<< orphan*/  tr_paddr; } ;
struct et_softc {struct et_txstatus_data sc_tx_status; struct et_txdesc_ring sc_tx_ring; int /*<<< orphan*/  ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct et_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ET_TX_NDESC ; 
 int /*<<< orphan*/  ET_TX_READY_POS ; 
 int /*<<< orphan*/  ET_TX_RING_CNT ; 
 int /*<<< orphan*/  ET_TX_RING_HI ; 
 int /*<<< orphan*/  ET_TX_RING_LO ; 
 int /*<<< orphan*/  ET_TX_STATUS_HI ; 
 int /*<<< orphan*/  ET_TX_STATUS_LO ; 
 int FUNC3 (struct et_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(struct et_softc *sc)
{
	struct et_txdesc_ring *tx_ring;
	struct et_txstatus_data *txsd;
	int error;

	error = FUNC3(sc);
	if (error) {
		FUNC4(sc->ifp, "can't init TX DMA engine\n");
		return (error);
	}

	/*
	 * Install TX descriptor ring
	 */
	tx_ring = &sc->sc_tx_ring;
	FUNC0(sc, ET_TX_RING_HI, FUNC1(tx_ring->tr_paddr));
	FUNC0(sc, ET_TX_RING_LO, FUNC2(tx_ring->tr_paddr));
	FUNC0(sc, ET_TX_RING_CNT, ET_TX_NDESC - 1);

	/*
	 * Install TX status
	 */
	txsd = &sc->sc_tx_status;
	FUNC0(sc, ET_TX_STATUS_HI, FUNC1(txsd->txsd_paddr));
	FUNC0(sc, ET_TX_STATUS_LO, FUNC2(txsd->txsd_paddr));

	FUNC0(sc, ET_TX_READY_POS, 0);

	/* Match ET_TX_READY_POS */
	tx_ring->tr_ready_index = 0;
	tx_ring->tr_ready_wrap = 0;

	return (0);
}