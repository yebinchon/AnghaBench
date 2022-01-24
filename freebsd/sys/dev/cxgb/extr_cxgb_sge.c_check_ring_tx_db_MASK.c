#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sge_txq {int cntxt_id; int db_pending; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/ * tb; } ;
typedef  TYPE_1__ adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_KDOORBELL ; 
 int F_SELEGRCNTX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  TXQ_LAST_PKT_DB ; 
 int /*<<< orphan*/  TXQ_RUNNING ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static __inline void
FUNC7(adapter_t *adap, struct sge_txq *q, int mustring)
{
#if USE_GTS
	clear_bit(TXQ_LAST_PKT_DB, &q->flags);
	if (test_and_set_bit(TXQ_RUNNING, &q->flags) == 0) {
		set_bit(TXQ_LAST_PKT_DB, &q->flags);
#ifdef T3_TRACE
		T3_TRACE1(adap->tb[q->cntxt_id & 7], "doorbell Tx, cntxt %d",
			  q->cntxt_id);
#endif
		t3_write_reg(adap, A_SG_KDOORBELL,
			     F_SELEGRCNTX | V_EGRCNTX(q->cntxt_id));
	}
#else
	if (mustring || ++q->db_pending >= 32) {
		FUNC6();            /* write descriptors before telling HW */
		FUNC4(adap, A_SG_KDOORBELL,
		    F_SELEGRCNTX | FUNC1(q->cntxt_id));
		q->db_pending = 0;
	}
#endif
}