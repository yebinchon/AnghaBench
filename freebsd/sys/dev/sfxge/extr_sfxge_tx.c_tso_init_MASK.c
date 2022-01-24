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
struct sfxge_txq {int /*<<< orphan*/ * tsoh_buffer; struct sfxge_softc* sc; } ;
struct sfxge_softc {int /*<<< orphan*/  txq_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SFXGE ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sfxge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct sfxge_txq *txq)
{
	struct sfxge_softc *sc = txq->sc;
	unsigned int tsoh_page_count = FUNC0(sc->txq_entries);
	int i, rc;

	/* Allocate TSO header buffers */
	txq->tsoh_buffer = FUNC2(tsoh_page_count * sizeof(txq->tsoh_buffer[0]),
				  M_SFXGE, M_WAITOK);

	for (i = 0; i < tsoh_page_count; i++) {
		rc = FUNC3(sc, PAGE_SIZE, &txq->tsoh_buffer[i]);
		if (rc != 0)
			goto fail;
	}

	return (0);

fail:
	while (i-- > 0)
		FUNC4(&txq->tsoh_buffer[i]);
	FUNC1(txq->tsoh_buffer, M_SFXGE);
	txq->tsoh_buffer = NULL;
	return (rc);
}