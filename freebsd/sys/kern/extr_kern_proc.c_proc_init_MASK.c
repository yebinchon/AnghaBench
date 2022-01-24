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
struct proc {int /*<<< orphan*/ * p_pgrp; int /*<<< orphan*/  p_stats; int /*<<< orphan*/  p_threads; int /*<<< orphan*/  p_pwait; int /*<<< orphan*/  p_profmtx; int /*<<< orphan*/  p_itimmtx; int /*<<< orphan*/  p_statmtx; int /*<<< orphan*/  p_slock; int /*<<< orphan*/  p_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct proc*) ; 
 int MTX_DEF ; 
 int MTX_DUPOK ; 
 int MTX_NEW ; 
 int MTX_SPIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  process_init ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int
FUNC5(void *mem, int size, int flags)
{
	struct proc *p;

	p = (struct proc *)mem;
	FUNC3(&p->p_mtx, "process lock", NULL, MTX_DEF | MTX_DUPOK | MTX_NEW);
	FUNC3(&p->p_slock, "process slock", NULL, MTX_SPIN | MTX_NEW);
	FUNC3(&p->p_statmtx, "pstatl", NULL, MTX_SPIN | MTX_NEW);
	FUNC3(&p->p_itimmtx, "pitiml", NULL, MTX_SPIN | MTX_NEW);
	FUNC3(&p->p_profmtx, "pprofl", NULL, MTX_SPIN | MTX_NEW);
	FUNC2(&p->p_pwait, "ppwait");
	FUNC1(&p->p_threads);	     /* all threads in proc */
	FUNC0(process_init, p);
	p->p_stats = FUNC4();
	p->p_pgrp = NULL;
	return (0);
}