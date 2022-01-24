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
struct struct_tcp_stats {int /*<<< orphan*/  v6; int /*<<< orphan*/  v4; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int FUNC1 (struct cudbg_buffer*,int,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct cudbg_buffer*,struct cudbg_buffer*) ; 

__attribute__((used)) static int FUNC5(struct cudbg_init *pdbg_init,
			     struct cudbg_buffer *dbg_buff,
			     struct cudbg_error *cudbg_err)
{
	struct adapter *padap = pdbg_init->adap;
	struct cudbg_buffer scratch_buff;
	struct struct_tcp_stats *tcp_stats_buff;
	u32 size;
	int rc = 0;

	size = sizeof(struct struct_tcp_stats);

	rc = FUNC1(dbg_buff, size, &scratch_buff);
	if (rc)
		goto err;

	tcp_stats_buff = (struct struct_tcp_stats *) scratch_buff.data;

	/* spin_lock(&padap->stats_lock);	TODO*/
	FUNC3(padap, &tcp_stats_buff->v4, &tcp_stats_buff->v6, 1);
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