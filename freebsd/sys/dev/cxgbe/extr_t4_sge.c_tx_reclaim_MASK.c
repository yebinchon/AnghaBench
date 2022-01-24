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
struct sge_eq {scalar_t__ cidx; scalar_t__ pidx; scalar_t__ equeqidx; } ;
struct sge_txq {struct sge_eq eq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sge_txq*) ; 
 int /*<<< orphan*/  FUNC1 (struct sge_txq*) ; 
 int FUNC2 (struct sge_txq*,int) ; 

__attribute__((used)) static void
FUNC3(void *arg, int n)
{
	struct sge_txq *txq = arg;
	struct sge_eq *eq = &txq->eq;

	do {
		if (FUNC0(txq) == 0)
			break;
		n = FUNC2(txq, 32);
		if (eq->cidx == eq->pidx)
			eq->equeqidx = eq->pidx;
		FUNC1(txq);
	} while (n > 0);
}