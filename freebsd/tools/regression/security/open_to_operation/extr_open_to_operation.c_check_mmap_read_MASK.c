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
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int O_ACCMODE ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,int) ; 
 int FUNC6 (char const*,int) ; 

__attribute__((used)) static void
FUNC7(const char *testname, const char *path, int isdir,
    const int *modes, int modes_count)
{
	int fd, i, mode;
	char *addr;

	/*
	 * mmap() read should fail for directories (ideally?) but succeed for
	 * O_RDONLY and O_RDWR file descriptors.
	 */
	for (i = 0; i < modes_count; i++) {
		mode = modes[i];
		fd = FUNC6(path, mode);
		if (fd < 0) {
			FUNC4(testname, "open", mode);
			continue;
		}
		addr = FUNC2(NULL, FUNC1(), PROT_READ, MAP_SHARED, fd,
		    0);
		if (addr == MAP_FAILED) {
			if (isdir)
				FUNC5(testname, "mmap dir failed", mode);
			else if ((mode & O_ACCMODE) == O_RDONLY ||
			    (mode & O_ACCMODE) == O_RDWR)
				FUNC4(testname, "mmap file failed",
				    mode);
			else
				FUNC5(testname, "mmap file failed", mode);
		} else {
			if (isdir)
				FUNC4(testname, "mmap dir succeeded",
				    mode);
			else if ((mode & O_ACCMODE) == O_RDONLY ||
			    (mode & O_ACCMODE) == O_RDWR)
				FUNC5(testname, "mmap file succeeded",
				    mode);
			else
				FUNC4(testname, "mmap file succeeded",
				    mode);
			(void)FUNC3(addr, FUNC1());
		}
		FUNC0(fd);
	}
}