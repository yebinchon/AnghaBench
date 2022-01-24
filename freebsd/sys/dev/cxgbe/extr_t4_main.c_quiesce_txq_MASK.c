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
struct sge_eq {size_t sidx; int flags; scalar_t__ pidx; scalar_t__ cidx; int /*<<< orphan*/ * desc; } ;
struct sge_txq {int /*<<< orphan*/  r; struct sge_eq eq; } ;
struct sge_qstat {scalar_t__ cidx; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int EQ_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sge_txq*) ; 
 int /*<<< orphan*/  FUNC2 (struct sge_txq*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static void
FUNC7(struct adapter *sc, struct sge_txq *txq)
{
	struct sge_eq *eq = &txq->eq;
	struct sge_qstat *spg = (void *)&eq->desc[eq->sidx];

	(void) sc;	/* unused */

#ifdef INVARIANTS
	TXQ_LOCK(txq);
	MPASS((eq->flags & EQ_ENABLED) == 0);
	TXQ_UNLOCK(txq);
#endif

	/* Wait for the mp_ring to empty. */
	while (!FUNC5(txq->r)) {
		FUNC4(txq->r, 0);
		FUNC6("rquiesce", 1);
	}

	/* Then wait for the hardware to finish. */
	while (spg->cidx != FUNC3(eq->pidx))
		FUNC6("equiesce", 1);

	/* Finally, wait for the driver to reclaim all descriptors. */
	while (eq->cidx != eq->pidx)
		FUNC6("dquiesce", 1);
}