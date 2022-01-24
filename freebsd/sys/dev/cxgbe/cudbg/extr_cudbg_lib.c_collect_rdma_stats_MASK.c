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
typedef  int u32 ;
struct tp_rdma_stats {int dummy; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int FUNC1 (struct cudbg_buffer*,int,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,struct tp_rdma_stats*,int) ; 
 int FUNC4 (struct cudbg_buffer*,struct cudbg_buffer*) ; 

__attribute__((used)) static int FUNC5(struct cudbg_init *pdbg_init,
			      struct cudbg_buffer *dbg_buff,
			      struct cudbg_error *cudbg_er)
{
	struct adapter *padap = pdbg_init->adap;
	struct cudbg_buffer scratch_buff;
	struct tp_rdma_stats *rdma_stats_buff;
	u32 size;
	int rc = 0;

	size = sizeof(struct tp_rdma_stats);

	rc = FUNC1(dbg_buff, size, &scratch_buff);
	if (rc)
		goto err;

	rdma_stats_buff = (struct tp_rdma_stats *) scratch_buff.data;

	/* spin_lock(&padap->stats_lock);	TODO*/
	FUNC3(padap, rdma_stats_buff, 1);
	/* spin_unlock(&padap->stats_lock);	TODO*/

	rc = FUNC4(&scratch_buff, dbg_buff);
	if (rc)
		goto err1;

	rc = FUNC0(&scratch_buff, dbg_buff);
err1:
	FUNC2(&scratch_buff, dbg_buff);
err:
	return rc;
}