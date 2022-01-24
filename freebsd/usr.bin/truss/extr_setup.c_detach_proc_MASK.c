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
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PT_DETACH ; 
 int /*<<< orphan*/  SIGCONT ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(pid_t pid)
{

	/* stop the child so that we can detach */
	FUNC1(pid, SIGSTOP);
	if (FUNC3(pid, NULL, 0) < 0)
		FUNC0(1, "Unexpected stop in waitpid");

	if (FUNC2(PT_DETACH, pid, (caddr_t)1, 0) < 0)
		FUNC0(1, "Can not detach the process");

	FUNC1(pid, SIGCONT);
}