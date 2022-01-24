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
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int O_ACCMODE ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int /*<<< orphan*/  PF_LOCAL ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 int FUNC3 (char const*,int) ; 
 scalar_t__ FUNC4 (int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC6(const char *testname, const char *path, int isdir,
    const int *modes, int modes_count)
{
	int fd, i, mode, sv[2];
	off_t sent;

	/*
	 * sendfile() should work only on files, and only when the access mode
	 * is O_RDONLY or O_RDWR.
	 */
	for (i = 0; i < modes_count; i++) {
		mode = modes[i];
		fd = FUNC3(path, mode);
		if (fd < 0) {
			FUNC1(testname, "open", mode);
			continue;
		}
		if (FUNC5(PF_LOCAL, SOCK_STREAM, 0, sv) < 0) {
			FUNC1(testname, "socketpair", mode);
			continue;
		}
		if (FUNC4(fd, sv[0], 0, 1, NULL, &sent, 0) == 0) {
			if (isdir)
				FUNC1(testname, "directory succeeded",
				    mode);
			else if (((mode & O_ACCMODE) == O_RDONLY) ||
			    ((mode & O_ACCMODE) == O_RDWR))
				FUNC2(testname, "succeeded", mode);
			else
				FUNC1(testname, "succeeded", mode);
		} else {
			if (isdir)
				FUNC2(testname, "directory failed", mode);
			else if (((mode & O_ACCMODE) == O_RDONLY) ||
			    ((mode & O_ACCMODE) == O_RDWR))
				FUNC1(testname, "failed", mode);
			else
				FUNC2(testname, "failed", mode);
		}
		FUNC0(sv[0]);
		FUNC0(sv[1]);
		FUNC0(fd);
	}
}