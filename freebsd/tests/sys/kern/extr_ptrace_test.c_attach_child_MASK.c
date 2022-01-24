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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PT_ATTACH ; 
 scalar_t__ SIGSTOP ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(pid_t pid)
{
	pid_t wpid;
	int status;

	FUNC0(FUNC3(PT_ATTACH, pid, NULL, 0) == 0);

	wpid = FUNC4(pid, &status, 0);
	FUNC0(wpid == pid);
	FUNC0(FUNC1(status));
	FUNC0(FUNC2(status) == SIGSTOP);
}