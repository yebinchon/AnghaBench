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
struct trussinfo {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  PT_ATTACH ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct trussinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC5(struct trussinfo *info, pid_t pid)
{
	int ret, retry;

	retry = 10;
	do {
		ret = FUNC2(PT_ATTACH, pid, NULL, 0);
		FUNC3(200);
	} while (ret && retry-- > 0);
	if (ret)
		FUNC0(1, "can not attach to target process");

	if (FUNC4(pid, NULL, 0) < 0)
		FUNC0(1, "Unexpect stop in waitpid");

	FUNC1(info, pid, 0);
}