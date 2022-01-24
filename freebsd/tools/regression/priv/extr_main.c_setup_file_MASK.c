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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,...) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

void
FUNC6(const char *test, char *fpathp, uid_t uid, gid_t gid, mode_t mode)
{
	int fd;

	FUNC5(fpathp, "/tmp/priv.XXXXXXXXXXX");
	fd = FUNC4(fpathp);
	if (fd < 0)
		FUNC1(-1, "test %s: mkstemp", test);

	if (FUNC3(fd, uid, gid) < 0)
		FUNC1(-1, "test %s: fchown(%s, %d, %d)", test, fpathp, uid,
		    gid);

	if (FUNC2(fd, mode) < 0)
		FUNC1(-1, "test %s: chmod(%s, 0%o)", test, fpathp, mode);

	FUNC0(fd);
}