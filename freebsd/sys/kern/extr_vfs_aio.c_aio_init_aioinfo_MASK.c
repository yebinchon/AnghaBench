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
struct proc {int /*<<< orphan*/  kaio_mtx; struct proc* p_aioinfo; int /*<<< orphan*/  kaio_sync_task; int /*<<< orphan*/  kaio_task; int /*<<< orphan*/  kaio_syncready; int /*<<< orphan*/  kaio_syncqueue; int /*<<< orphan*/  kaio_liojoblist; int /*<<< orphan*/  kaio_jobqueue; int /*<<< orphan*/  kaio_done; int /*<<< orphan*/  kaio_all; scalar_t__ kaio_buffer_count; scalar_t__ kaio_count; scalar_t__ kaio_active_count; scalar_t__ kaio_flags; } ;
struct kaioinfo {int /*<<< orphan*/  kaio_mtx; struct kaioinfo* p_aioinfo; int /*<<< orphan*/  kaio_sync_task; int /*<<< orphan*/  kaio_task; int /*<<< orphan*/  kaio_syncready; int /*<<< orphan*/  kaio_syncqueue; int /*<<< orphan*/  kaio_liojoblist; int /*<<< orphan*/  kaio_jobqueue; int /*<<< orphan*/  kaio_done; int /*<<< orphan*/  kaio_all; scalar_t__ kaio_buffer_count; scalar_t__ kaio_count; scalar_t__ kaio_active_count; scalar_t__ kaio_flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MTX_DEF ; 
 int MTX_NEW ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct proc*) ; 
 int /*<<< orphan*/  aio_kick_helper ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  aio_schedule_fsync ; 
 int /*<<< orphan*/  kaio_zone ; 
 int /*<<< orphan*/  max_aio_procs ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ num_aio_procs ; 
 int /*<<< orphan*/  target_aio_procs ; 
 struct proc* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct proc*) ; 

void
FUNC10(struct proc *p)
{
	struct kaioinfo *ki;

	ki = FUNC8(kaio_zone, M_WAITOK);
	FUNC7(&ki->kaio_mtx, "aiomtx", NULL, MTX_DEF | MTX_NEW);
	ki->kaio_flags = 0;
	ki->kaio_active_count = 0;
	ki->kaio_count = 0;
	ki->kaio_buffer_count = 0;
	FUNC3(&ki->kaio_all);
	FUNC3(&ki->kaio_done);
	FUNC3(&ki->kaio_jobqueue);
	FUNC3(&ki->kaio_liojoblist);
	FUNC3(&ki->kaio_syncqueue);
	FUNC3(&ki->kaio_syncready);
	FUNC4(&ki->kaio_task, 0, aio_kick_helper, p);
	FUNC4(&ki->kaio_sync_task, 0, aio_schedule_fsync, ki);
	FUNC1(p);
	if (p->p_aioinfo == NULL) {
		p->p_aioinfo = ki;
		FUNC2(p);
	} else {
		FUNC2(p);
		FUNC6(&ki->kaio_mtx);
		FUNC9(kaio_zone, ki);
	}

	while (num_aio_procs < FUNC0(target_aio_procs, max_aio_procs))
		FUNC5(NULL);
}