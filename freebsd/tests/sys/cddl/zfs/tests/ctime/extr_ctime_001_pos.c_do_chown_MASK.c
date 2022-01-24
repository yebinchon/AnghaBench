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
 int FUNC0 (char const*,scalar_t__,scalar_t__) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,int,int) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC5(const char *pfile)
{
	int ret = 0;

	if (pfile == NULL) {
		return (-1);
	}

	if (FUNC0(pfile, FUNC4(), FUNC3()) == -1) {
		ret = errno;
	}
	if (ret != 0) {
		FUNC2(stderr, "chown(%s, %d, %d)\n", pfile, (int)FUNC4(),
		    (int)FUNC3());
		FUNC1(1);
	}

	return (ret);
}