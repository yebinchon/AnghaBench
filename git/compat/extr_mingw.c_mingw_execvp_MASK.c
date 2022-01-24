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
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char* const*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ) ; 

int FUNC3(const char *cmd, char *const *argv)
{
	char *prog = FUNC2(cmd, 0);

	if (prog) {
		FUNC1(prog, argv);
		FUNC0(prog);
	} else
		errno = ENOENT;

	return -1;
}