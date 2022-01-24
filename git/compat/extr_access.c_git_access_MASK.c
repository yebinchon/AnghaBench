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
struct stat {int st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 int S_IXGRP ; 
 int S_IXOTH ; 
 int S_IXUSR ; 
 int X_OK ; 
 int FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (char const*,struct stat*) ; 

int FUNC3(const char *path, int mode)
{
	struct stat st;

	/* do not interfere a normal user */
	if (FUNC1())
		return FUNC0(path, mode);

	if (FUNC2(path, &st) < 0)
		return -1;

	/* Root can read or write any file. */
	if (!(mode & X_OK))
		return 0;

	/* Root can execute any file that has any one of the execute
	 * bits set.
	 */
	if (st.st_mode & (S_IXUSR | S_IXGRP | S_IXOTH))
		return 0;

	errno = EACCES;
	return -1;
}