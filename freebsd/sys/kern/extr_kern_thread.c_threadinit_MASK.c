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

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_TIDHASH ; 
 scalar_t__ PID_MAX ; 
 int /*<<< orphan*/  UMA_ZONE_NOFREE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int maxproc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  thread_ctor ; 
 int /*<<< orphan*/  thread_dtor ; 
 int /*<<< orphan*/  thread_fini ; 
 int /*<<< orphan*/  thread_init ; 
 int /*<<< orphan*/  thread_zone ; 
 int /*<<< orphan*/  tid_lock ; 
 int /*<<< orphan*/  tid_unrhdr ; 
 int /*<<< orphan*/  tidhash ; 
 int /*<<< orphan*/  tidhash_lock ; 
 int /*<<< orphan*/  tidhashtbl ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC6(void)
{

	FUNC1(&tid_lock, "TID lock", NULL, MTX_DEF);

	/*
	 * pid_max cannot be greater than PID_MAX.
	 * leave one number for thread0.
	 */
	tid_unrhdr = FUNC2(PID_MAX + 2, INT_MAX, &tid_lock);

	thread_zone = FUNC5("THREAD", FUNC4(),
	    thread_ctor, thread_dtor, thread_init, thread_fini,
	    32 - 1, UMA_ZONE_NOFREE);
	tidhashtbl = FUNC0(maxproc / 2, M_TIDHASH, &tidhash);
	FUNC3(&tidhash_lock, "tidhash");
}