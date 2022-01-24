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
struct sfxge_tx_dpl {unsigned int std_get_count; unsigned int std_get_non_tcp_count; unsigned int std_get_hiwat; struct mbuf* std_get; struct mbuf** std_getp; } ;
struct sfxge_txq {unsigned int added; scalar_t__ init_state; scalar_t__ blocked; struct mbuf* common; struct sfxge_tx_dpl dpl; struct sfxge_softc* sc; } ;
struct sfxge_softc {int /*<<< orphan*/  ifnet; struct mbuf* enp; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sfxge_txq*) ; 
 scalar_t__ SFXGE_TXQ_STARTED ; 
 unsigned int SFXGE_TX_BATCH ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 scalar_t__ FUNC6 (struct mbuf*) ; 
 int FUNC7 (struct sfxge_txq*,struct mbuf*) ; 

__attribute__((used)) static void
FUNC8(struct sfxge_txq *txq)
{
	struct sfxge_softc *sc;
	struct sfxge_tx_dpl *stdp;
	struct mbuf *mbuf, *next;
	unsigned int count;
	unsigned int non_tcp_count;
	unsigned int pushed;
	int rc;

	FUNC2(txq);

	sc = txq->sc;
	stdp = &txq->dpl;
	pushed = txq->added;

	if (FUNC3(txq->init_state == SFXGE_TXQ_STARTED)) {
		FUNC5(sc->enp);
		FUNC5(txq->common);
	}

	mbuf = stdp->std_get;
	count = stdp->std_get_count;
	non_tcp_count = stdp->std_get_non_tcp_count;

	if (count > stdp->std_get_hiwat)
		stdp->std_get_hiwat = count;

	while (count != 0) {
		FUNC1(mbuf != NULL, ("mbuf == NULL"));

		next = mbuf->m_nextpkt;
		mbuf->m_nextpkt = NULL;

		FUNC0(sc->ifnet, mbuf); /* packet capture */

		if (next != NULL)
			FUNC5(next);

		rc = FUNC7(txq, mbuf);
		--count;
		non_tcp_count -= FUNC6(mbuf);
		mbuf = next;
		if (rc != 0)
			continue;

		if (txq->blocked)
			break;

		/* Push the fragments to the hardware in batches. */
		if (txq->added - pushed >= SFXGE_TX_BATCH) {
			FUNC4(txq->common, txq->added, pushed);
			pushed = txq->added;
		}
	}

	if (count == 0) {
		FUNC1(mbuf == NULL, ("mbuf != NULL"));
		FUNC1(non_tcp_count == 0,
			("inconsistent TCP/non-TCP detection"));
		stdp->std_get = NULL;
		stdp->std_get_count = 0;
		stdp->std_get_non_tcp_count = 0;
		stdp->std_getp = &stdp->std_get;
	} else {
		stdp->std_get = mbuf;
		stdp->std_get_count = count;
		stdp->std_get_non_tcp_count = non_tcp_count;
	}

	if (txq->added != pushed)
		FUNC4(txq->common, txq->added, pushed);

	FUNC1(txq->blocked || stdp->std_get_count == 0,
		("queue unblocked but count is non-zero"));
}