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
typedef  int u32 ;
struct struct_tp_err_stats {int /*<<< orphan*/  nchan; int /*<<< orphan*/  stats; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; } ;
struct adapter {TYPE_1__* chip_params; } ;
struct TYPE_2__ {int /*<<< orphan*/  nchan; } ;

/* Variables and functions */
 int FUNC0 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int FUNC1 (struct cudbg_buffer*,int,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct cudbg_buffer*,struct cudbg_buffer*) ; 

__attribute__((used)) static int FUNC5(struct cudbg_init *pdbg_init,
				struct cudbg_buffer *dbg_buff,
				struct cudbg_error *cudbg_err)
{
	struct adapter *padap = pdbg_init->adap;
	struct cudbg_buffer scratch_buff;
	struct struct_tp_err_stats *tp_err_stats_buff;
	u32 size;
	int rc = 0;

	size = sizeof(struct struct_tp_err_stats);

	rc = FUNC1(dbg_buff, size, &scratch_buff);
	if (rc)
		goto err;

	tp_err_stats_buff = (struct struct_tp_err_stats *) scratch_buff.data;

	/* spin_lock(&padap->stats_lock);	TODO*/
	FUNC3(padap, &tp_err_stats_buff->stats, 1);
	/* spin_unlock(&padap->stats_lock);	TODO*/
	tp_err_stats_buff->nchan = padap->chip_params->nchan;

	rc = FUNC4(&scratch_buff, dbg_buff);
	if (rc)
		goto err1;

	rc = FUNC0(&scratch_buff, dbg_buff);
err1:
	FUNC2(&scratch_buff, dbg_buff);
err:
	return rc;
}