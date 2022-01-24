#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct mbuf {struct mbuf* m_nextpkt; } ;
typedef  TYPE_1__* iflib_txq_t ;
typedef  TYPE_2__* if_t ;
typedef  TYPE_3__* if_ctx_t ;
struct TYPE_12__ {int ifc_sysctl_tx_abdicate; TYPE_1__* ifc_txqs; } ;
struct TYPE_11__ {int if_drv_flags; int /*<<< orphan*/  if_snd; } ;
struct TYPE_10__ {int /*<<< orphan*/  ift_br; scalar_t__ ift_closed; int /*<<< orphan*/  ift_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENETDOWN ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct mbuf*) ; 
 int /*<<< orphan*/  M_IFLIB ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_3__*,struct mbuf*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  TX_BATCH_SIZE ; 
 scalar_t__ FUNC8 (int) ; 
 int count ; 
 size_t i ; 
 TYPE_3__* FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct mbuf*) ; 
 struct mbuf** FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mbuf** marr ; 
 struct mbuf** mp ; 
 struct mbuf* next ; 
 int FUNC14 (struct mbuf**) ; 
 int /*<<< orphan*/  tx_frees ; 
 int /*<<< orphan*/  tx_seen ; 

__attribute__((used)) static int
FUNC15(if_t ifp, struct mbuf *m)
{
	if_ctx_t	ctx = FUNC9(ifp);

	iflib_txq_t txq;
	int err, qidx;
	int abdicate = ctx->ifc_sysctl_tx_abdicate;

	if (FUNC8((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0 || !FUNC3(ctx))) {
		FUNC1(tx_frees);
		FUNC12(m);
		return (ENETDOWN);
	}

	FUNC4(m->m_nextpkt == NULL);
	/* ALTQ-enabled interfaces always use queue 0. */
	qidx = 0;
	if ((FUNC6(ctx) > 1) && FUNC5(m) && !FUNC0(&ifp->if_snd))
		qidx = FUNC7(ctx, m);
	/*
	 * XXX calculate buf_ring based on flowid (divvy up bits?)
	 */
	txq = &ctx->ifc_txqs[qidx];

#ifdef DRIVER_BACKPRESSURE
	if (txq->ift_closed) {
		while (m != NULL) {
			next = m->m_nextpkt;
			m->m_nextpkt = NULL;
			m_freem(m);
			DBG_COUNTER_INC(tx_frees);
			m = next;
		}
		return (ENOBUFS);
	}
#endif
#ifdef notyet
	qidx = count = 0;
	mp = marr;
	next = m;
	do {
		count++;
		next = next->m_nextpkt;
	} while (next != NULL);

	if (count > nitems(marr))
		if ((mp = malloc(count*sizeof(struct mbuf *), M_IFLIB, M_NOWAIT)) == NULL) {
			/* XXX check nextpkt */
			m_freem(m);
			/* XXX simplify for now */
			DBG_COUNTER_INC(tx_frees);
			return (ENOBUFS);
		}
	for (next = m, i = 0; next != NULL; i++) {
		mp[i] = next;
		next = next->m_nextpkt;
		mp[i]->m_nextpkt = NULL;
	}
#endif
	FUNC1(tx_seen);
	err = FUNC11(txq->ift_br, (void **)&m, 1, TX_BATCH_SIZE, abdicate);

	if (abdicate)
		FUNC2(&txq->ift_task);
 	if (err) {
		if (!abdicate)
			FUNC2(&txq->ift_task);
		/* support forthcoming later */
#ifdef DRIVER_BACKPRESSURE
		txq->ift_closed = TRUE;
#endif
		FUNC10(txq->ift_br, TX_BATCH_SIZE);
		FUNC12(m);
		FUNC1(tx_frees);
	}

	return (err);
}