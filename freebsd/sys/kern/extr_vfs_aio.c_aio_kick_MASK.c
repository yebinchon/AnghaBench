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
struct kaioinfo {scalar_t__ kaio_active_count; } ;
struct aioproc {int /*<<< orphan*/  aioproc; int /*<<< orphan*/  aioprocflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIOP_FREE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 struct aioproc* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct aioproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aio_freeproc ; 
 int /*<<< orphan*/  aio_job_mtx ; 
 int FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  list ; 
 scalar_t__ max_aio_per_proc ; 
 scalar_t__ max_aio_procs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ num_aio_procs ; 
 scalar_t__ num_aio_resv_start ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct proc *userp)
{
	struct kaioinfo *ki = userp->p_aioinfo;
	struct aioproc *aiop;
	int error, ret = 0;

	FUNC3(&aio_job_mtx, MA_OWNED);
retryproc:
	if ((aiop = FUNC0(&aio_freeproc)) != NULL) {
		FUNC1(&aio_freeproc, aiop, list);
		aiop->aioprocflags &= ~AIOP_FREE;
		FUNC6(aiop->aioproc);
	} else if (num_aio_resv_start + num_aio_procs < max_aio_procs &&
	    ki->kaio_active_count + num_aio_resv_start < max_aio_per_proc) {
		num_aio_resv_start++;
		FUNC5(&aio_job_mtx);
		error = FUNC2(&num_aio_resv_start);
		FUNC4(&aio_job_mtx);
		if (error) {
			num_aio_resv_start--;
			goto retryproc;
		}
	} else {
		ret = -1;
	}
	return (ret);
}