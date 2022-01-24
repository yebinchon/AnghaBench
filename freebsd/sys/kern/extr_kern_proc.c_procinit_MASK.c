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
typedef  int u_long ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_PROC ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  SX_DUPOK ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 int /*<<< orphan*/  UMA_ZONE_NOFREE ; 
 int /*<<< orphan*/  allproc ; 
 int /*<<< orphan*/  allproc_lock ; 
 void* FUNC1 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int maxproc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int pgrphash ; 
 void* pgrphashtbl ; 
 int pidhash ; 
 int pidhashlock ; 
 void* pidhashtbl ; 
 int /*<<< orphan*/ * pidhashtbl_lock ; 
 int /*<<< orphan*/  ppeers_lock ; 
 int /*<<< orphan*/  proc_ctor ; 
 int /*<<< orphan*/  proc_dtor ; 
 int /*<<< orphan*/  proc_fini ; 
 int /*<<< orphan*/  proc_init ; 
 int /*<<< orphan*/  proc_zone ; 
 int /*<<< orphan*/  procid_lock ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(void)
{
	u_long i;

	FUNC5(&allproc_lock, "allproc");
	FUNC5(&proctree_lock, "proctree");
	FUNC3(&ppeers_lock, "p_peers", NULL, MTX_DEF);
	FUNC3(&procid_lock, "procid", NULL, MTX_DEF);
	FUNC0(&allproc);
	pidhashtbl = FUNC1(maxproc / 4, M_PROC, &pidhash);
	pidhashlock = (pidhash + 1) / 64;
	if (pidhashlock > 0)
		pidhashlock--;
	pidhashtbl_lock = FUNC2(sizeof(*pidhashtbl_lock) * (pidhashlock + 1),
	    M_PROC, M_WAITOK | M_ZERO);
	for (i = 0; i < pidhashlock + 1; i++)
		FUNC6(&pidhashtbl_lock[i], "pidhash", SX_DUPOK);
	pgrphashtbl = FUNC1(maxproc / 4, M_PROC, &pgrphash);
	proc_zone = FUNC8("PROC", FUNC4(),
	    proc_ctor, proc_dtor, proc_init, proc_fini,
	    UMA_ALIGN_PTR, UMA_ZONE_NOFREE);
	FUNC7();
}