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
struct kaioinfo {int dummy; } ;
struct kaiocb {int dummy; } ;
struct aioproc {int dummy; } ;
struct aioliojob {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIOD_LIFETIME_DEFAULT ; 
 int /*<<< orphan*/  CTL_P1003_1B_AIO_MAX ; 
 int /*<<< orphan*/  CTL_P1003_1B_AIO_PRIO_DELTA_MAX ; 
 int /*<<< orphan*/  CTL_P1003_1B_ASYNCHRONOUS_IO ; 
 int /*<<< orphan*/  EVENTHANDLER_PRI_ANY ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVFILT_AIO ; 
 int /*<<< orphan*/  EVFILT_LIO ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  MAX_AIO_QUEUE ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 int /*<<< orphan*/  UMA_ZONE_NOFREE ; 
 int /*<<< orphan*/  _POSIX_ASYNCHRONOUS_IO ; 
 int /*<<< orphan*/  aio_filtops ; 
 int /*<<< orphan*/  aio_freeproc ; 
 int /*<<< orphan*/  aio_job_mtx ; 
 int /*<<< orphan*/  aio_jobs ; 
 int /*<<< orphan*/  aio_newproc_sem ; 
 int /*<<< orphan*/  aio_proc_rundown ; 
 int /*<<< orphan*/  aio_proc_rundown_exec ; 
 void* aiocb_zone ; 
 int /*<<< orphan*/  aiod_lifetime ; 
 int /*<<< orphan*/  aiod_unr ; 
 void* aiolio_zone ; 
 void* aiop_zone ; 
 void* exec_tag ; 
 void* exit_tag ; 
 int jobrefid ; 
 void* kaio_zone ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lio_filtops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  process_exec ; 
 int /*<<< orphan*/  process_exit ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 void* FUNC7 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(void)
{

	exit_tag = FUNC0(process_exit, aio_proc_rundown, NULL,
	    EVENTHANDLER_PRI_ANY);
	exec_tag = FUNC0(process_exec, aio_proc_rundown_exec,
	    NULL, EVENTHANDLER_PRI_ANY);
	FUNC2(EVFILT_AIO, &aio_filtops);
	FUNC2(EVFILT_LIO, &lio_filtops);
	FUNC1(&aio_freeproc);
	FUNC6(&aio_newproc_sem, 0, "aio_new_proc");
	FUNC3(&aio_job_mtx, "aio_job", NULL, MTX_DEF);
	FUNC1(&aio_jobs);
	aiod_unr = FUNC4(1, INT_MAX, NULL);
	kaio_zone = FUNC7("AIO", sizeof(struct kaioinfo), NULL, NULL,
	    NULL, NULL, UMA_ALIGN_PTR, UMA_ZONE_NOFREE);
	aiop_zone = FUNC7("AIOP", sizeof(struct aioproc), NULL,
	    NULL, NULL, NULL, UMA_ALIGN_PTR, UMA_ZONE_NOFREE);
	aiocb_zone = FUNC7("AIOCB", sizeof(struct kaiocb), NULL, NULL,
	    NULL, NULL, UMA_ALIGN_PTR, UMA_ZONE_NOFREE);
	aiolio_zone = FUNC7("AIOLIO", sizeof(struct aioliojob), NULL,
	    NULL, NULL, NULL, UMA_ALIGN_PTR, UMA_ZONE_NOFREE);
	aiod_lifetime = AIOD_LIFETIME_DEFAULT;
	jobrefid = 1;
	FUNC5(CTL_P1003_1B_ASYNCHRONOUS_IO, _POSIX_ASYNCHRONOUS_IO);
	FUNC5(CTL_P1003_1B_AIO_MAX, MAX_AIO_QUEUE);
	FUNC5(CTL_P1003_1B_AIO_PRIO_DELTA_MAX, 0);

	return (0);
}