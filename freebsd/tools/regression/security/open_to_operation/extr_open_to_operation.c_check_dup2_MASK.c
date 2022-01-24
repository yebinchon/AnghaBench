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
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (char const*,int) ; 

__attribute__((used)) static void
FUNC5(const char *testname, const char *path, const int *modes,
    int modes_count)
{
	int dfd, fd, i, mode;

	/*
	 * dup2() should work regardless of open mode.
	 */
	for (i = 0; i < modes_count; i++) {
		mode = modes[i];
		fd = FUNC4(path, mode);
		if (fd < 0) {
			FUNC2(testname, "open", mode);
			continue;
		}
		dfd = FUNC1(fd, 500);	/* Arbitrary but high number. */
		if (dfd >= 0) {
			FUNC3(testname, NULL, mode);
			FUNC0(dfd);
		} else
			FUNC2(testname, NULL, mode);
		FUNC0(fd);
	}
}