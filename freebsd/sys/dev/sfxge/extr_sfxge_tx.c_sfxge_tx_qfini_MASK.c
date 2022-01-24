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
struct sfxge_txq {scalar_t__ init_state; scalar_t__ type; int /*<<< orphan*/  mem; struct sfxge_txq* stmp; int /*<<< orphan*/  map; int /*<<< orphan*/  packet_dma_tag; struct sfxge_txq* pend_desc; } ;
struct sfxge_softc {unsigned int txq_entries; struct sfxge_txq** txq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_SFXGE ; 
 scalar_t__ SFXGE_TXQ_INITIALIZED ; 
 scalar_t__ SFXGE_TXQ_IP_TCP_UDP_CKSUM ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_txq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sfxge_txq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sfxge_txq*) ; 

__attribute__((used)) static void
FUNC6(struct sfxge_softc *sc, unsigned int index)
{
	struct sfxge_txq *txq;
	unsigned int nmaps;

	txq = sc->txq[index];

	FUNC0(txq->init_state == SFXGE_TXQ_INITIALIZED,
	    ("txq->init_state != SFXGE_TXQ_INITIALIZED"));

	if (txq->type == SFXGE_TXQ_IP_TCP_UDP_CKSUM)
		FUNC5(txq);

	/* Free the context arrays. */
	FUNC3(txq->pend_desc, M_SFXGE);
	nmaps = sc->txq_entries;
	while (nmaps-- != 0)
		FUNC2(txq->packet_dma_tag, txq->stmp[nmaps].map);
	FUNC3(txq->stmp, M_SFXGE);

	/* Release DMA memory mapping. */
	FUNC4(&txq->mem);

	sc->txq[index] = NULL;

	FUNC1(txq);

	FUNC3(txq, M_SFXGE);
}