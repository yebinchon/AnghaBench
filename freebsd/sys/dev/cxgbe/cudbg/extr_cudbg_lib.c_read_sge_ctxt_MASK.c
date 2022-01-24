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
typedef  int /*<<< orphan*/  u32 ;
struct cudbg_init {struct adapter* adap; } ;
struct adapter {int /*<<< orphan*/  mbox; } ;
typedef  enum ctxt_type { ____Placeholder_ctxt_type } ctxt_type ;

/* Variables and functions */
 int INTR_OK ; 
 int SLEEP_OK ; 
 int FUNC0 (struct adapter*,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct cudbg_init*) ; 
 int FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct cudbg_init *pdbg_init, u32 cid,
			  enum ctxt_type ctype, u32 *data)
{
	struct adapter *padap = pdbg_init->adap;
	int rc = -1;

	if (FUNC2(pdbg_init)) {
		rc = FUNC0(padap, NULL, SLEEP_OK | INTR_OK,
		    "t4cudf");
		if (rc != 0)
			goto out;
		rc = FUNC3(padap, padap->mbox, cid, ctype,
				    data);
		FUNC1(padap, 0);
	}

out:
	if (rc)
		FUNC4(padap, cid, ctype, data);
}