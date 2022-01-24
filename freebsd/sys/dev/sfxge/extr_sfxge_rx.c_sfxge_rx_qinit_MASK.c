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
struct sfxge_softc {unsigned int rxq_count; int rxq_entries; struct sfxge_evq** evq; struct sfxge_rxq** rxq; } ;
struct sfxge_rxq {unsigned int index; int entries; int ptr_mask; int /*<<< orphan*/  init_state; int /*<<< orphan*/  refill_callout; void* queue; int /*<<< orphan*/  buf_base_id; int /*<<< orphan*/  mem; int /*<<< orphan*/  refill_threshold; struct sfxge_softc* sc; } ;
struct sfxge_rx_sw_desc {int dummy; } ;
struct sfxge_evq {int dummy; } ;
typedef  int /*<<< orphan*/  efsys_mem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  M_SFXGE ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  SFXGE_RXQ_INITIALIZED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct sfxge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sfxge_rxq*) ; 
 int /*<<< orphan*/  FUNC8 (struct sfxge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct sfxge_softc *sc, unsigned int index)
{
	struct sfxge_rxq *rxq;
	struct sfxge_evq *evq;
	efsys_mem_t *esmp;
	int rc;

	FUNC2(index < sc->rxq_count, ("index >= %d", sc->rxq_count));

	rxq = FUNC5(sizeof(struct sfxge_rxq), M_SFXGE, M_ZERO | M_WAITOK);
	rxq->sc = sc;
	rxq->index = index;
	rxq->entries = sc->rxq_entries;
	rxq->ptr_mask = rxq->entries - 1;
	rxq->refill_threshold = FUNC3(rxq->entries);

	sc->rxq[index] = rxq;
	esmp = &rxq->mem;

	evq = sc->evq[index];

	/* Allocate and zero DMA space. */
	if ((rc = FUNC6(sc, FUNC1(sc->rxq_entries), esmp)) != 0)
		return (rc);

	/* Allocate buffer table entries. */
	FUNC8(sc, FUNC0(sc->rxq_entries),
				 &rxq->buf_base_id);

	/* Allocate the context array and the flow table. */
	rxq->queue = FUNC5(sizeof(struct sfxge_rx_sw_desc) * sc->rxq_entries,
	    M_SFXGE, M_WAITOK | M_ZERO);
	FUNC7(rxq);

	FUNC4(&rxq->refill_callout, 1);

	rxq->init_state = SFXGE_RXQ_INITIALIZED;

	return (0);
}