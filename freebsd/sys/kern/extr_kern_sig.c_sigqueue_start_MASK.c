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
typedef  int /*<<< orphan*/  ksiginfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_P1003_1B_REALTIME_SIGNALS ; 
 int /*<<< orphan*/  CTL_P1003_1B_RTSIG_MAX ; 
 int /*<<< orphan*/  CTL_P1003_1B_SIGQUEUE_MAX ; 
 scalar_t__ SIGRTMAX ; 
 scalar_t__ SIGRTMIN ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 scalar_t__ _POSIX_REALTIME_SIGNALS ; 
 int /*<<< orphan*/  ksiginfo_zone ; 
 scalar_t__ max_pending_per_proc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  preallocate_siginfo ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void)
{
	ksiginfo_zone = FUNC2("ksiginfo", sizeof(ksiginfo_t),
		NULL, NULL, NULL, NULL, UMA_ALIGN_PTR, 0);
	FUNC1(ksiginfo_zone, preallocate_siginfo);
	FUNC0(CTL_P1003_1B_REALTIME_SIGNALS, _POSIX_REALTIME_SIGNALS);
	FUNC0(CTL_P1003_1B_RTSIG_MAX, SIGRTMAX - SIGRTMIN + 1);
	FUNC0(CTL_P1003_1B_SIGQUEUE_MAX, max_pending_per_proc);
}