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
struct test {int dummy; } ;
struct stat {int st_mode; } ;

/* Variables and functions */
 int ALLPERMS ; 
 int /*<<< orphan*/  DEV_IO ; 
 int EXPECTED_PERMS ; 
 int /*<<< orphan*/  NEW_PERMS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int initialized ; 
 int saved_perms ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 

int
FUNC4(int asroot, int asjail, struct test *test)
{
	struct stat sb;

	if (FUNC1(DEV_IO, &sb) < 0) {
		FUNC2("priv_io_setup: stat(%s)", DEV_IO);
		return (-1);
	}
	saved_perms = sb.st_mode & ALLPERMS;
	if (saved_perms != EXPECTED_PERMS) {
		FUNC3("priv_io_setup: perms = 0%o; expected 0%o",
		    saved_perms, EXPECTED_PERMS);
		return (-1);
	}
	if (FUNC0(DEV_IO, NEW_PERMS) < 0) {
		FUNC2("priv_io_setup: chmod(%s, 0%o)", DEV_IO, NEW_PERMS);
		return (-1);
	}
	initialized = 1;
	return (0);
}