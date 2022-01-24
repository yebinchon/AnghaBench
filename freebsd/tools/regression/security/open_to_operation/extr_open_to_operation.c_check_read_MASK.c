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
typedef  scalar_t__ (* read_fn ) (int,char*,int) ;
typedef  int /*<<< orphan*/  ch ;

/* Variables and functions */
 int O_ACCMODE ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 int FUNC3 (char const*,int) ; 

__attribute__((used)) static void
FUNC4(const char *testname, read_fn fn, const char *path,
    const int *modes, int modes_count)
{
	int fd, i, mode;
	char ch;

	/*
	 * read() should (generally) succeeded on directories.  read() on
	 * files should succeed for O_RDONLY and O_RDWR descriptors.
	 */
	for (i = 0; i < modes_count; i++) {
		mode = modes[i];
		fd = FUNC3(path, mode);
		if (fd < 0) {
			FUNC1(testname, "open", mode);
			continue;
		}
		if (fn(fd, &ch, sizeof(ch)) < 0) {
			if ((mode & O_ACCMODE) == O_RDONLY ||
			    (mode & O_ACCMODE) == O_RDWR)
				FUNC1(testname, "read failed", mode);
			else
				FUNC2(testname, "read failed", mode);
		} else {
			if (!((mode & O_ACCMODE) == O_RDONLY ||
			    (mode & O_ACCMODE) == O_RDWR))
				FUNC1(testname, "read succeeded", mode);
			else
				FUNC2(testname, "read succeeded", mode);
		}
		FUNC0(fd);
	}
}