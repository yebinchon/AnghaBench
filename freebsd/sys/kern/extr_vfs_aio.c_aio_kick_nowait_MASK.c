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
struct proc {struct kaioinfo* p_aioinfo; } ;
struct kaioinfo {scalar_t__ kaio_active_count; int /*<<< orphan*/  kaio_task; } ;
struct aioproc {int /*<<< orphan*/  aioproc; int /*<<< orphan*/  aioprocflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIOP_FREE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 struct aioproc* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct aioproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aio_freeproc ; 
 int /*<<< orphan*/  aio_job_mtx ; 
 int /*<<< orphan*/  list ; 
 scalar_t__ max_aio_per_proc ; 
 scalar_t__ max_aio_procs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ num_aio_procs ; 
 scalar_t__ num_aio_resv_start ; 
 int /*<<< orphan*/  taskqueue_aiod_kick ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct proc *userp)
{
	struct kaioinfo *ki = userp->p_aioinfo;
	struct aioproc *aiop;

	FUNC2(&aio_job_mtx, MA_OWNED);
	if ((aiop = FUNC0(&aio_freeproc)) != NULL) {
		FUNC1(&aio_freeproc, aiop, list);
		aiop->aioprocflags &= ~AIOP_FREE;
		FUNC4(aiop->aioproc);
	} else if (num_aio_resv_start + num_aio_procs < max_aio_procs &&
	    ki->kaio_active_count + num_aio_resv_start < max_aio_per_proc) {
		FUNC3(taskqueue_aiod_kick, &ki->kaio_task);
	}
}