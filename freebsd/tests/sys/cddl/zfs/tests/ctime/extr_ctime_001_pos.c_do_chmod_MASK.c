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
 int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC3(const char *pfile)
{
	int ret = 0;

	if (pfile == NULL) {
		return (-1);
	}

	if (FUNC0(pfile, ALL_MODE) == -1) {
		ret = errno;
	}
	if (ret != 0) {
		FUNC2(stderr, "chmod(%s, ALL_MODE)\n", pfile);
		FUNC1(1);
	}

	return (ret);
}