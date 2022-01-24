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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char*) ; 

void
FUNC7(char *from, char *to)
{
	char buf[MAXPATHLEN];
	char *to_dir;
	int to_dir_fd = -1;

	/*
	 * Make sure file is safe on disk. To improve performance we will call
	 * fsync() to the directory where file lies
	 */
	if (FUNC5(from, to) != 0 ||
	    (to_dir = FUNC1(to)) == NULL ||
	    (to_dir_fd = FUNC4(to_dir, O_RDONLY|O_DIRECTORY)) == -1 ||
	    FUNC3(to_dir_fd) != 0) {
		int sverrno = errno;
		(void)FUNC6(buf, sizeof(buf), "%s to %s", from, to);
		errno = sverrno;
		if (to_dir_fd != -1)
			FUNC0(to_dir_fd);
		FUNC2(buf);
	}

	if (to_dir_fd != -1)
		FUNC0(to_dir_fd);
}