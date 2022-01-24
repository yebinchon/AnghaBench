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
struct sw_state {scalar_t__ os_type; int /*<<< orphan*/  caller_string; int /*<<< orphan*/  fw_state; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_PCIE_FW ; 
 int FUNC0 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int FUNC1 (struct cudbg_buffer*,int,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct cudbg_buffer*,struct cudbg_buffer*) ; 

__attribute__((used)) static int FUNC6(struct cudbg_init *pdbg_init,
			    struct cudbg_buffer *dbg_buff,
			    struct cudbg_error *cudbg_err)
{
	struct adapter *padap = pdbg_init->adap;
	struct cudbg_buffer scratch_buff;
	struct sw_state *swstate;
	u32 size;
	int rc = 0;

	size = sizeof(struct sw_state);

	rc = FUNC1(dbg_buff, size, &scratch_buff);
	if (rc)
		goto err;

	swstate = (struct sw_state *) scratch_buff.data;

	swstate->fw_state = FUNC4(padap, A_PCIE_FW);
	FUNC3(swstate->caller_string, sizeof(swstate->caller_string), "%s",
	    "FreeBSD");
	swstate->os_type = 0;

	rc = FUNC5(&scratch_buff, dbg_buff);
	if (rc)
		goto err1;

	rc = FUNC0(&scratch_buff, dbg_buff);

err1:
	FUNC2(&scratch_buff, dbg_buff);
err:
	return rc;
}