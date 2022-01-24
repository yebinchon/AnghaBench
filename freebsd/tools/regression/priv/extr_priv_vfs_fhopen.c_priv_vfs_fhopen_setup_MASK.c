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

/* Variables and functions */
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  fh ; 
 int /*<<< orphan*/  fpath ; 
 int fpath_initialized ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

int
FUNC3(int asroot, int injail, struct test *test)
{

	FUNC1("private_vfs_fhopen_setup: fpath", fpath, UID_ROOT,
	    GID_WHEEL, 0644);
	fpath_initialized = 1;
	if (FUNC0(fpath, &fh) < 0) {
		FUNC2("priv_vfs_fhopen_setup: getfh(%s)", fpath);
		return (-1);
	}
	return (0);
}