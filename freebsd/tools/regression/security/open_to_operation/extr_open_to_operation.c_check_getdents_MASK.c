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
 int O_ACCMODE ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 
 int FUNC4 (char const*,int) ; 

__attribute__((used)) static void
FUNC5(const char *testname, const char *path, int isdir,
    const int *modes, int modes_count)
{
	int fd, i, mode;
	char buf[8192];

	/*
	 * getdents() should always work on directories and never on files,
	 * assuming directories are always opened for read (which they are).
	 */
	for (i = 0; i < modes_count; i++) {
		mode = modes[i];
		fd = FUNC4(path, mode);
		if (fd < 0) {
			FUNC2(testname, "open", mode);
			continue;
		}
		if (FUNC1(fd, buf, sizeof(buf)) >= 0) {
			if (isdir && ((mode & O_ACCMODE) == O_RDONLY))
				FUNC3(testname, "directory succeeded",
				    mode);
			else if (isdir)
				FUNC2(testname, "directory succeeded",
				    mode);
			else
				FUNC2(testname, "file succeeded", mode);
		} else {
			if (isdir && ((mode & O_ACCMODE) == O_RDONLY))
				FUNC2(testname, "directory failed",
				    mode);
			else if (isdir)
				FUNC3(testname, "directory failed", mode);
			else
				FUNC3(testname, "file failed", mode);
		}
		FUNC0(fd);
	}
}