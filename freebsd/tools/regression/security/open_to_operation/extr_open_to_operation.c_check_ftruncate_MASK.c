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
struct stat {scalar_t__ st_size; } ;

/* Variables and functions */
 int O_ACCMODE ; 
 int O_RDWR ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 scalar_t__ FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int) ; 
 int FUNC5 (char const*,int) ; 

__attribute__((used)) static void
FUNC6(const char *testname, const char *path, const int *modes,
    int modes_count)
{
	struct stat sb;
	int fd, i, mode;

	/*
	 * ftruncate() should work as long as long as (mode & O_ACCMODE) is
	 * O_RDWR or O_WRONLY.
	 *
	 * Directories should never be writable, so this test should always
	 * pass for directories...
	 */
	for (i = 0; i < modes_count; i++) {
		mode = modes[i];
		fd = FUNC5(path, mode);
		if (fd < 0) {
			FUNC3(testname, "open", mode);
			FUNC3(testname, "truncate1 skipped", mode);
			FUNC3(testname, "truncate2 skipped", mode);
			FUNC3(testname, "truncate3 skipped", mode);
			continue;
		}
		if (FUNC1(fd, &sb) < 0) {
			FUNC3(testname, "fstat", mode);
			FUNC3(testname, "truncate1 skipped", mode);
			FUNC3(testname, "truncate2 skipped", mode);
			FUNC3(testname, "truncate3 skipped", mode);
			FUNC0(fd);
			continue;
		}
		FUNC4(testname, "setup", mode);

		/* Truncate to grow file. */
		if (FUNC2(fd, sb.st_size + 1) == 0) {
			if (((mode & O_ACCMODE) == O_WRONLY) ||
			    ((mode & O_ACCMODE) == O_RDWR))
				FUNC4(testname, "truncate1 succeeded",
				    mode);
			else {
				FUNC3(testname, "truncate1 succeeded",
				    mode);
				FUNC3(testname, "truncate2 skipped",
				    mode);
				FUNC3(testname, "truncate3 skipped",
				    mode);
				FUNC0(fd);
				continue;
			}
		} else {
			if (((mode & O_ACCMODE) == O_WRONLY) ||
			    ((mode & O_ACCMODE) == O_RDWR)) {
				FUNC3(testname, "truncate1 failed",
				    mode);
				FUNC3(testname, "truncate2 skipped",
				    mode);
				FUNC3(testname, "truncate3 skipped",
				    mode);
				FUNC0(fd);
				continue;
			} else
				FUNC4(testname, "truncate1 failed", mode);
		}

		/* Truncate to same size. */
		if (FUNC2(fd, sb.st_size + 1) == 0) {
			if (((mode & O_ACCMODE) == O_WRONLY) ||
			    ((mode & O_ACCMODE) == O_RDWR))
				FUNC4(testname, "truncate2 succeeded",
				    mode);
			else {
				FUNC3(testname, "truncate2 succeeded",
				    mode);
				FUNC3(testname, "truncate3 skipped",
				    mode);
				FUNC0(fd);
				continue;
			}
		} else {
			if (((mode & O_ACCMODE) == O_WRONLY) ||
			    ((mode & O_ACCMODE) == O_RDWR)) {
				FUNC3(testname, "truncate2 failed",
				    mode);
				FUNC3(testname, "truncate3 skipped",
				    mode);
				FUNC0(fd);
				continue;
			} else
				FUNC4(testname, "truncate2 failed", mode);
		}

		/* Truncate to shrink. */
		if (FUNC2(fd, sb.st_size) == 0) {
			if (((mode & O_ACCMODE) == O_WRONLY) ||
			    ((mode & O_ACCMODE) == O_RDWR))
				FUNC4(testname, "truncate3 succeeded",
				    mode);
			else
				FUNC3(testname, "truncate3 succeeded",
				    mode);
		} else {
			if (((mode & O_ACCMODE) == O_WRONLY) ||
			    ((mode & O_ACCMODE) == O_RDWR))
				FUNC3(testname, "truncate3 failed",
				    mode);
			else
				FUNC4(testname, "truncate3 failed", mode);
		}
		FUNC0(fd);
	}
}