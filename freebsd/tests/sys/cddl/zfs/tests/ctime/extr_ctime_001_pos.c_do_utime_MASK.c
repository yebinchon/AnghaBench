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
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *) ; 

int
FUNC3(const char *pfile)
{
	int ret = 0;

	if (pfile == NULL) {
		return (-1);
	}

	/*
	 * Times of the file are set to the current time
	 */
	if (FUNC2(pfile, NULL) == -1) {
		ret = errno;
	}
	if (ret != 0) {
		FUNC1(stderr, "utime(%s, NULL)\n", pfile);
		FUNC0(1);
	}

	return (ret);
}