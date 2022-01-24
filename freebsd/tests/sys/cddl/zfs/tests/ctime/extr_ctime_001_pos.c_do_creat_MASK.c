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
 int /*<<< orphan*/  ALL_MODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC4(const char *pfile)
{
	int fd, ret = 0;

	if (pfile == NULL) {
		return (-1);
	}

	if ((fd = FUNC1(pfile, ALL_MODE)) == -1) {
		ret = errno;
	}
	if (fd != -1) {
		(void) FUNC0(fd);
	}

	if (ret != 0) {
		FUNC3(stderr, "creat(%s, ALL_MODE)\n", pfile);
		FUNC2(1);
	}

	return (ret);
}