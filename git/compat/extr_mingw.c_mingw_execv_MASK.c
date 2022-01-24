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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,char const**,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char* const*) ; 
 scalar_t__ FUNC5 (int,int*,int /*<<< orphan*/ ) ; 

int FUNC6(const char *cmd, char *const *argv)
{
	/* check if git_command is a shell script */
	if (!FUNC4(cmd, argv)) {
		int pid, status;
		int exec_id;

		exec_id = FUNC2(cmd, (const char **)argv);
		pid = FUNC1(cmd, (const char **)argv, 0);
		if (pid < 0) {
			FUNC3(exec_id, -1);
			return -1;
		}
		if (FUNC5(pid, &status, 0) < 0)
			status = 255;
		FUNC3(exec_id, status);
		FUNC0(status);
	}
	return -1;
}