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
typedef  void* u32 ;
struct struct_wc_stats {void* wr_cl_fail; void* wr_cl_success; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SGE_STAT_MATCH ; 
 int /*<<< orphan*/  A_SGE_STAT_TOTAL ; 
 int FUNC0 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int FUNC1 (struct cudbg_buffer*,void*,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 void* FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct cudbg_buffer*,struct cudbg_buffer*) ; 

__attribute__((used)) static int FUNC6(struct cudbg_init *pdbg_init,
			    struct cudbg_buffer *dbg_buff,
			    struct cudbg_error *cudbg_err)
{
	struct adapter *padap = pdbg_init->adap;
	struct cudbg_buffer scratch_buff;
	struct struct_wc_stats *wc_stats_buff;
	u32 val1;
	u32 val2;
	u32 size;

	int rc = 0;

	size = sizeof(struct struct_wc_stats);

	rc = FUNC1(dbg_buff, size, &scratch_buff);
	if (rc)
		goto err;

	wc_stats_buff = (struct struct_wc_stats *) scratch_buff.data;

	if (!FUNC2(padap)) {
		val1 = FUNC4(padap, A_SGE_STAT_TOTAL);
		val2 = FUNC4(padap, A_SGE_STAT_MATCH);
		wc_stats_buff->wr_cl_success = val1 - val2;
		wc_stats_buff->wr_cl_fail = val2;
	} else {
		wc_stats_buff->wr_cl_success = 0;
		wc_stats_buff->wr_cl_fail = 0;
	}

	rc = FUNC5(&scratch_buff, dbg_buff);
	if (rc)
		goto err1;

	rc = FUNC0(&scratch_buff, dbg_buff);
err1:
	FUNC3(&scratch_buff, dbg_buff);
err:
	return rc;
}