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
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (char const*,int) ; 

__attribute__((used)) static void
FUNC4(const char *testname, const char *directory,
    int mode, int expected_errno)
{
	int dfd;

	dfd = FUNC3(directory, mode);
	if (dfd >= 0) {
		if (expected_errno)
			FUNC1(testname, "opened", mode);
		else
			FUNC2(testname, NULL, mode);
		FUNC0(dfd);
	} else {
		if (expected_errno && expected_errno == errno)
			FUNC2(testname, NULL, mode);
		else if (expected_errno != 0)
			FUNC1(testname, "wrong errno", mode);
		else
			FUNC1(testname, "failed", mode);
	}
}