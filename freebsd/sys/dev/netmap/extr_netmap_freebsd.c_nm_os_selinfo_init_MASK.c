#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  si_note; } ;
struct TYPE_6__ {scalar_t__ kqueue_users; int /*<<< orphan*/  m; TYPE_1__ si; int /*<<< orphan*/  mtxname; int /*<<< orphan*/ * ntfytq; int /*<<< orphan*/  ntfytask; } ;
typedef  TYPE_2__ NM_SELINFO_T ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nm_kqueue_notify ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

int FUNC7(NM_SELINFO_T *si, const char *name) {
	int err;

	FUNC0(&si->ntfytask, 0, nm_kqueue_notify, si);
	si->ntfytq = FUNC4(name, M_NOWAIT,
	    taskqueue_thread_enqueue, &si->ntfytq);
	if (si->ntfytq == NULL)
		return -ENOMEM;
	err = FUNC6(&si->ntfytq, 1, PI_NET, "tq %s", name);
	if (err) {
		FUNC5(si->ntfytq);
		si->ntfytq = NULL;
		return err;
	}

	FUNC3(si->mtxname, sizeof(si->mtxname), "nmkl%s", name);
	FUNC2(&si->m, si->mtxname, NULL, MTX_DEF);
	FUNC1(&si->si.si_note, &si->m);
	si->kqueue_users = 0;

	return (0);
}