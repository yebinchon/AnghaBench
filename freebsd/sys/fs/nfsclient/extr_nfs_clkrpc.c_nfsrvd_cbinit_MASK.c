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
struct TYPE_4__ {int /*<<< orphan*/ * sp_done; int /*<<< orphan*/ * sp_assign; int /*<<< orphan*/ * sp_rcache; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSDLOCKMUTEXPTR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  PZERO ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ nfs_numnfscbd ; 
 TYPE_1__* nfscbd_pool ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (char*,int /*<<< orphan*/ *) ; 

void
FUNC6(int terminating)
{

	FUNC1();

	if (terminating) {
		/* Wait for any xprt registrations to complete. */
		while (nfs_numnfscbd > 0)
			FUNC3(&nfs_numnfscbd, NFSDLOCKMUTEXPTR, PZERO, 
			    "nfscbdt", 0);
		if (nfscbd_pool != NULL) {
			FUNC2();
			FUNC4(nfscbd_pool);
			FUNC0();
		}
	}

	if (nfscbd_pool == NULL) {
		FUNC2();
		nfscbd_pool = FUNC5("nfscbd", NULL);
		nfscbd_pool->sp_rcache = NULL;
		nfscbd_pool->sp_assign = NULL;
		nfscbd_pool->sp_done = NULL;
		FUNC0();
	}
}