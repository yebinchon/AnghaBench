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
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SY_THR_STATIC_KLD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nlm_global_lock ; 
 int /*<<< orphan*/  nlm_hosts ; 
 int /*<<< orphan*/  nlm_syscalls ; 
 int /*<<< orphan*/  nlm_waiting_locks ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(void)
{
	int error;

	FUNC2(&nlm_global_lock, "nlm_global_lock", NULL, MTX_DEF);
	FUNC1(&nlm_waiting_locks);
	FUNC1(&nlm_hosts);

	error = FUNC3(nlm_syscalls, SY_THR_STATIC_KLD);
	if (error != 0)
		FUNC0("Can't register NLM syscall\n");
	return (error);
}