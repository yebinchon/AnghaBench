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
struct vi_info {TYPE_1__* pi; } ;
struct sge_eq {int dummy; } ;
struct sge_txq {int /*<<< orphan*/  r; int /*<<< orphan*/  sdesc; int /*<<< orphan*/  gl; struct sge_eq eq; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {struct adapter* adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_CXGBE ; 
 int /*<<< orphan*/  FUNC0 (struct sge_txq*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct adapter*,struct sge_eq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct vi_info *vi, struct sge_txq *txq)
{
	int rc;
	struct adapter *sc = vi->pi->adapter;
	struct sge_eq *eq = &txq->eq;

	rc = FUNC2(sc, eq);
	if (rc)
		return (rc);

	FUNC4(txq->gl);
	FUNC1(txq->sdesc, M_CXGBE);
	FUNC3(txq->r);

	FUNC0(txq, sizeof(*txq));
	return (0);
}