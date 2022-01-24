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
struct sfxge_txq {unsigned int completed; unsigned int pending; unsigned int ptr_mask; unsigned int added; int /*<<< orphan*/  entries; scalar_t__ blocked; int /*<<< orphan*/  packet_dma_tag; struct sfxge_tx_mapping* stmp; } ;
struct TYPE_2__ {int /*<<< orphan*/  heap_buf; struct mbuf* mbuf; } ;
struct sfxge_tx_mapping {int flags; TYPE_1__ u; int /*<<< orphan*/  map; } ;
struct sfxge_evq {int dummy; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SFXGE ; 
 int /*<<< orphan*/  FUNC0 (struct sfxge_evq*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int TX_BUF_MBUF ; 
 int TX_BUF_UNMAP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct sfxge_txq*) ; 

void
FUNC7(struct sfxge_txq *txq, struct sfxge_evq *evq)
{
	unsigned int completed;

	FUNC0(evq);

	completed = txq->completed;
	while (completed != txq->pending) {
		struct sfxge_tx_mapping *stmp;
		unsigned int id;

		id = completed++ & txq->ptr_mask;

		stmp = &txq->stmp[id];
		if (stmp->flags & TX_BUF_UNMAP) {
			FUNC2(txq->packet_dma_tag, stmp->map);
			if (stmp->flags & TX_BUF_MBUF) {
				struct mbuf *m = stmp->u.mbuf;
				do
					m = FUNC4(m);
				while (m != NULL);
			} else {
				FUNC3(stmp->u.heap_buf, M_SFXGE);
			}
			stmp->flags = 0;
		}
	}
	txq->completed = completed;

	/* Check whether we need to unblock the queue. */
	FUNC5();
	if (txq->blocked) {
		unsigned int level;

		level = txq->added - txq->completed;
		if (level <= FUNC1(txq->entries))
			FUNC6(txq);
	}
}