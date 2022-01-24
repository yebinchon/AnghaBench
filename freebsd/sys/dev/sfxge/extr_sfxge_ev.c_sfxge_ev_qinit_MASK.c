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
struct sfxge_softc {int txq_entries; struct sfxge_evq** evq; int /*<<< orphan*/  dev; scalar_t__ rxq_entries; } ;
struct sfxge_evq {unsigned int index; int /*<<< orphan*/  init_state; int /*<<< orphan*/  buf_base_id; void* entries; int /*<<< orphan*/  txq; int /*<<< orphan*/ * txqs; int /*<<< orphan*/  mem; struct sfxge_softc* sc; } ;
typedef  int /*<<< orphan*/  efsys_mem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  M_SFXGE ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  SFXGE_EVQ_INITIALIZED ; 
 int /*<<< orphan*/  FUNC4 (struct sfxge_evq*) ; 
 int /*<<< orphan*/  FUNC5 (struct sfxge_evq*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  SFXGE_EVQ_UNINITIALIZED ; 
 unsigned int SFXGE_RX_SCALE_MAX ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sfxge_evq*,int /*<<< orphan*/ ) ; 
 struct sfxge_evq* FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct sfxge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct sfxge_evq*) ; 
 int /*<<< orphan*/  FUNC12 (struct sfxge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(struct sfxge_softc *sc, unsigned int index)
{
	struct sfxge_evq *evq;
	efsys_mem_t *esmp;
	int rc;

	FUNC2(index < SFXGE_RX_SCALE_MAX, ("index >= SFXGE_RX_SCALE_MAX"));

	evq = FUNC8(sizeof(struct sfxge_evq), M_SFXGE, M_ZERO | M_WAITOK);
	evq->sc = sc;
	evq->index = index;
	sc->evq[index] = evq;
	esmp = &evq->mem;

	/* Build an event queue with room for one event per tx and rx buffer,
	 * plus some extra for link state events and MCDI completions.
	 * There are three tx queues in the first event queue and one in
	 * other.
	 */
	if (index == 0)
		evq->entries =
			FUNC3(sc->rxq_entries +
					   3 * sc->txq_entries +
					   128);
	else
		evq->entries =
			FUNC3(sc->rxq_entries +
					   sc->txq_entries +
					   128);

	/* Initialise TX completion list */
	evq->txqs = &evq->txq;

	/* Allocate DMA space. */
	if ((rc = FUNC9(sc, FUNC1(evq->entries), esmp)) != 0)
		return (rc);

	/* Allocate buffer table entries. */
	FUNC12(sc, FUNC0(evq->entries),
				 &evq->buf_base_id);

	FUNC5(evq, FUNC6(sc->dev), index);

	evq->init_state = SFXGE_EVQ_INITIALIZED;

#if EFSYS_OPT_QSTATS
	rc = sfxge_evq_stat_init(evq);
	if (rc != 0)
		goto fail_evq_stat_init;
#endif

	return (0);

#if EFSYS_OPT_QSTATS
fail_evq_stat_init:
	evq->init_state = SFXGE_EVQ_UNINITIALIZED;
	SFXGE_EVQ_LOCK_DESTROY(evq);
	sfxge_dma_free(esmp);
	sc->evq[index] = NULL;
	free(evq, M_SFXGE);

	return (rc);
#endif
}