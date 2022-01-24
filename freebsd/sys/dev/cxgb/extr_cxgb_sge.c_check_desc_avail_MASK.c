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
struct sge_txq {unsigned int size; unsigned int in_use; int /*<<< orphan*/  stops; int /*<<< orphan*/  sendq; } ;
struct sge_qset {int /*<<< orphan*/  txq_stopped; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC4 (struct sge_txq*) ; 
 scalar_t__ FUNC5 (unsigned int,int /*<<< orphan*/ *) ; 
 struct sge_qset* FUNC6 (struct sge_txq*,unsigned int) ; 

__attribute__((used)) static __inline int
FUNC7(adapter_t *adap, struct sge_txq *q,
		 struct mbuf *m, unsigned int ndesc,
		 unsigned int qid)
{
	/* 
	 * XXX We currently only use this for checking the control queue
	 * the control queue is only used for binding qsets which happens
	 * at init time so we are guaranteed enough descriptors
	 */
	if (FUNC0(FUNC2(&q->sendq))) {
addq_exit:	(void )FUNC1(&q->sendq, m);
		return 1;
	}
	if (FUNC0(q->size - q->in_use < ndesc)) {

		struct sge_qset *qs = FUNC6(q, qid);

		FUNC3(&qs->txq_stopped, qid);
		if (FUNC4(q) &&
		    FUNC5(qid, &qs->txq_stopped))
			return 2;

		q->stops++;
		goto addq_exit;
	}
	return 0;
}