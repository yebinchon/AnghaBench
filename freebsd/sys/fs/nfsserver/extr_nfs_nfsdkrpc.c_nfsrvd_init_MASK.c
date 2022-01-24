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
struct TYPE_4__ {int /*<<< orphan*/  sp_done; int /*<<< orphan*/  sp_assign; int /*<<< orphan*/ * sp_rcache; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _vfs_nfsd ; 
 int /*<<< orphan*/  fha_nd_complete ; 
 int /*<<< orphan*/  fhanew_assign ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nfsd_master_proc ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * nfsrv_zeropnfsdat ; 
 TYPE_1__* nfsrvd_pool ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (char*,int /*<<< orphan*/ ) ; 

void
FUNC9(int terminating)
{

	FUNC1();

	if (terminating) {
		nfsd_master_proc = NULL;
		FUNC2();
		FUNC6();
		FUNC5();
		FUNC7(nfsrvd_pool);
		FUNC4(nfsrv_zeropnfsdat, M_TEMP);
		nfsrv_zeropnfsdat = NULL;
		FUNC0();
	} else {
		FUNC2();
		nfsrvd_pool = FUNC8("nfsd",
		    FUNC3(_vfs_nfsd));
		nfsrvd_pool->sp_rcache = NULL;
		nfsrvd_pool->sp_assign = fhanew_assign;
		nfsrvd_pool->sp_done = fha_nd_complete;
		FUNC0();
	}
}