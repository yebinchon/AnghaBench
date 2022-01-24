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
 int /*<<< orphan*/  errno ; 
 int FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char*,char*,int,int,...) ; 

__attribute__((used)) static void
FUNC3(const char *label, const char *fpathp, int asroot, int injail, 
    int flags, int expected_error, int expected_errno)
{
	int fd;

	fd = FUNC1(fpathp, flags);
	if (fd < 0) {
		if (expected_error != -1)
			FUNC2("%s(%s, %s): expected (%d, %d) got (-1, %d)",
			    label, asroot ? "root" : "!root", injail ? "jail"
			    : "!jail", expected_error, expected_errno, errno);
	} else {
		if (expected_error == -1)
			FUNC2("%s(%s, %s): expected (%d, %d) got 0", label,
			    asroot ? "root" : "!root", injail ? "jail" :
			    "!jail", expected_error, expected_errno);
		(void)FUNC0(fd);
	}
}