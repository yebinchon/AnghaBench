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
struct sge_txq {size_t in_use; size_t size; size_t pidx; int gen; int /*<<< orphan*/  cntxt_id; int /*<<< orphan*/  stops; int /*<<< orphan*/  sendq; int /*<<< orphan*/ * desc; } ;
struct sge_qset {int /*<<< orphan*/  txq_stopped; TYPE_1__* port; struct sge_txq* txq; } ;
struct mbuf {int /*<<< orphan*/  m_len; int /*<<< orphan*/  m_data; } ;
typedef  int /*<<< orphan*/  adapter_t ;
struct TYPE_2__ {int /*<<< orphan*/ * adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_KDOORBELL ; 
 int F_SELEGRCNTX ; 
 size_t TXQ_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct sge_qset*) ; 
 int /*<<< orphan*/  FUNC1 (struct sge_qset*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 struct mbuf* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sge_txq*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC8 (struct sge_txq*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC12(void *data, int npending)
{
	struct mbuf *m;
	struct sge_qset *qs = (struct sge_qset *)data;
	struct sge_txq *q = &qs->txq[TXQ_CTRL];
	adapter_t *adap = qs->port->adapter;

	FUNC0(qs);
again:	FUNC6(q);

	while (q->in_use < q->size &&
	       (m = FUNC4(&q->sendq)) != NULL) {

		FUNC11(&q->desc[q->pidx], m->m_data, m->m_len, q->gen);
		FUNC3(m);

		if (++q->pidx >= q->size) {
			q->pidx = 0;
			q->gen ^= 1;
		}
		q->in_use++;
	}
	if (FUNC5(&q->sendq)) {
		FUNC7(&qs->txq_stopped, TXQ_CTRL);

		if (FUNC8(q) &&
		    FUNC10(TXQ_CTRL, &qs->txq_stopped))
			goto again;
		q->stops++;
	}
	FUNC1(qs);
	FUNC9(adap, A_SG_KDOORBELL,
		     F_SELEGRCNTX | FUNC2(q->cntxt_id));
}