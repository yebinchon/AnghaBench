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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct struct_tp_la {scalar_t__ data; int /*<<< orphan*/  mode; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_TP_DBG_LA_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TPLA_SIZE ; 
 int FUNC1 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int FUNC2 (struct cudbg_buffer*,int,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct cudbg_buffer*,struct cudbg_buffer*) ; 

__attribute__((used)) static int FUNC7(struct cudbg_init *pdbg_init,
			 struct cudbg_buffer *dbg_buff,
			 struct cudbg_error *cudbg_err)
{
	struct adapter *padap = pdbg_init->adap;
	struct cudbg_buffer scratch_buff;
	struct struct_tp_la *tp_la_buff;
	u32 size;
	int rc = 0;

	size = sizeof(struct struct_tp_la) + TPLA_SIZE *  sizeof(u64);

	rc = FUNC2(dbg_buff, size, &scratch_buff);
	if (rc)
		goto err;

	tp_la_buff = (struct struct_tp_la *) scratch_buff.data;

	tp_la_buff->mode = FUNC0(FUNC4(padap, A_TP_DBG_LA_CONFIG));
	FUNC5(padap, (u64 *)tp_la_buff->data, NULL);

	rc = FUNC6(&scratch_buff, dbg_buff);
	if (rc)
		goto err1;

	rc = FUNC1(&scratch_buff, dbg_buff);
err1:
	FUNC3(&scratch_buff, dbg_buff);
err:
	return rc;
}