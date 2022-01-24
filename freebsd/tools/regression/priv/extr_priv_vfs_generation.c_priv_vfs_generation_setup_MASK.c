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
struct stat {scalar_t__ st_gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  GID_WHEEL ; 
 int MAX_TRIES ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  fpath ; 
 int fpath_initialized ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int
FUNC5(int asroot, int injail, struct test *test)
{
	struct stat sb;
	int i;

	/*
	 * The kernel zeros the generation number field when an unprivileged
	 * user stats a file.  In order to distinguish the two cases, we
	 * therefore require a file that we know has a non-zero generation
	 * number.  We try up to MAX_TRIES times and otherwise fail.
	 */
	for (i = 0; i < MAX_TRIES; i++) {
		FUNC0("priv_vfs_generation_setup: fpath", fpath,
		    UID_ROOT, GID_WHEEL, 0644);
		if (FUNC1(fpath, &sb) < 0) {
			FUNC3("priv_vfs_generation_setup: fstat(%s)", fpath);
			(void)FUNC2(fpath);
			return (-1);
		}
		if (sb.st_gen != 0) {
			fpath_initialized = 1;
			return (0);
		}
	}
	FUNC4("priv_vfs_generation_setup: unable to create gen file");
	return (-1);
}