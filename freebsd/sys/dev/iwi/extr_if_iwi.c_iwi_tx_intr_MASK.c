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
typedef  scalar_t__ uint32_t ;
struct iwi_tx_ring {scalar_t__ next; int /*<<< orphan*/  queued; int /*<<< orphan*/  data_dmat; struct iwi_tx_data* data; int /*<<< orphan*/  csr_ridx; } ;
struct iwi_tx_data {int /*<<< orphan*/ * m; int /*<<< orphan*/ * ni; int /*<<< orphan*/  map; } ;
struct iwi_softc {scalar_t__ sc_softled; scalar_t__ sc_tx_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 scalar_t__ FUNC0 (struct iwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  IWI_LED_TX ; 
 int IWI_TX_RING_COUNT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iwi_softc*) ; 

__attribute__((used)) static void
FUNC7(struct iwi_softc *sc, struct iwi_tx_ring *txq)
{
	struct iwi_tx_data *data;
	uint32_t hw;

	hw = FUNC0(sc, txq->csr_ridx);

	while (txq->next != hw) {
		data = &txq->data[txq->next];
		FUNC1(15, ("tx done idx=%u\n", txq->next));
		FUNC2(txq->data_dmat, data->map,
		    BUS_DMASYNC_POSTWRITE);
		FUNC3(txq->data_dmat, data->map);
		FUNC4(data->ni, data->m, 0);
		data->ni = NULL;
		data->m = NULL;
		txq->queued--;
		txq->next = (txq->next + 1) % IWI_TX_RING_COUNT;
	}
	sc->sc_tx_timer = 0;
	if (sc->sc_softled)
		FUNC5(sc, IWI_LED_TX);
	FUNC6(sc);
}