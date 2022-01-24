#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct struct_hw_sched {int /*<<< orphan*/ * ipg; int /*<<< orphan*/ * kbps; int /*<<< orphan*/  pace_tab; int /*<<< orphan*/  mode; int /*<<< orphan*/  map; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; } ;
struct TYPE_3__ {int /*<<< orphan*/  cclk; } ;
struct TYPE_4__ {TYPE_1__ vpd; } ;
struct adapter {TYPE_2__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_TP_MOD_CONFIG ; 
 int /*<<< orphan*/  A_TP_TX_MOD_QUEUE_REQ_MAP ; 
 int CUDBG_STATUS_CCLK_NOT_DEFINED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int NTX_SCHED ; 
 int FUNC1 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int FUNC2 (struct cudbg_buffer*,int,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct cudbg_buffer*,struct cudbg_buffer*) ; 

__attribute__((used)) static int FUNC8(struct cudbg_init *pdbg_init,
			    struct cudbg_buffer *dbg_buff,
			    struct cudbg_error *cudbg_err)
{
	struct adapter *padap = pdbg_init->adap;
	struct cudbg_buffer scratch_buff;
	struct struct_hw_sched *hw_sched_buff;
	u32 size;
	int i, rc = 0;

	if (!padap->params.vpd.cclk) {
		rc =  CUDBG_STATUS_CCLK_NOT_DEFINED;
		goto err;
	}

	size = sizeof(struct struct_hw_sched);
	rc = FUNC2(dbg_buff, size, &scratch_buff);
	if (rc)
		goto err;

	hw_sched_buff = (struct struct_hw_sched *) scratch_buff.data;

	hw_sched_buff->map = FUNC6(padap, A_TP_TX_MOD_QUEUE_REQ_MAP);
	hw_sched_buff->mode = FUNC0(FUNC6(padap, A_TP_MOD_CONFIG));
	FUNC5(padap, hw_sched_buff->pace_tab);

	for (i = 0; i < NTX_SCHED; ++i) {
		FUNC4(padap, i, &hw_sched_buff->kbps[i],
		    &hw_sched_buff->ipg[i], 1);
	}

	rc = FUNC7(&scratch_buff, dbg_buff);
	if (rc)
		goto err1;

	rc = FUNC1(&scratch_buff, dbg_buff);
err1:
	FUNC3(&scratch_buff, dbg_buff);
err:
	return rc;
}