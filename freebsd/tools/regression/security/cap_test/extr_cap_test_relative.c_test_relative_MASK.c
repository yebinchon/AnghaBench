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
typedef  int cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int CAP_ALL ; 
 int CAP_LOOKUP ; 
 int CAP_MASK_VALID ; 
 int CAP_READ ; 
 int CAP_SEEK ; 
 int CAP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int (*) (int,char*,int /*<<< orphan*/ ),int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (int,char*,int /*<<< orphan*/ ),int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int (*) (int,char*,int /*<<< orphan*/ ),int,...) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PASSED ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  cap_getrights ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,char*,int /*<<< orphan*/ ) ; 

int
FUNC9(void)
{
	int success = PASSED;
	int fd, etc, etc_cap, etc_cap_ro, etc_cap_base, etc_cap_all;
	cap_rights_t baserights = CAP_READ | CAP_WRITE | CAP_SEEK | CAP_LOOKUP;
	cap_rights_t rights;

	FUNC5(etc = FUNC7("/etc/", O_RDONLY));
	FUNC3(cap_getrights, etc, &rights);
	FUNC2(rights, CAP_ALL);

	FUNC4(etc_cap, etc, CAP_READ);
	FUNC4(etc_cap_ro, etc, CAP_READ | CAP_LOOKUP);
	FUNC4(etc_cap_base, etc, baserights);
	FUNC4(etc_cap_all, etc, CAP_MASK_VALID);

	/*
	 * openat(2) with regular file descriptors in non-capability mode
	 * should Just Work (tm).
	 */
	FUNC3(openat, etc, "/etc/passwd", O_RDONLY);
	FUNC3(openat, AT_FDCWD, "/etc/passwd", O_RDONLY);
	FUNC3(openat, etc, "passwd", O_RDONLY);
	FUNC3(openat, etc, "../etc/passwd", O_RDONLY);

	/*
	 * Lookups relative to capabilities should be strictly relative.
	 *
	 * When not in capability mode, we don't actually require CAP_LOOKUP.
	 */
	FUNC3(openat, etc_cap_ro, "passwd", O_RDONLY);
	FUNC3(openat, etc_cap_base, "passwd", O_RDONLY);
	FUNC3(openat, etc_cap_all, "passwd", O_RDONLY);

	FUNC1(openat, etc_cap_ro, "../etc/passwd", O_RDONLY);
	FUNC1(openat, etc_cap_base, "../etc/passwd", O_RDONLY);

	/*
	 * This requires discussion: do we treat a capability with
	 * CAP_MASK_VALID *exactly* like a non-capability file descriptor
	 * (currently, the implementation says yes)?
	 */
	FUNC3(openat, etc_cap_all, "../etc/passwd", O_RDONLY);

	/*
	 * A file opened relative to a capability should itself be a capability.
	 */
	FUNC3(cap_getrights, etc_cap_base, &rights);

	FUNC5(fd = FUNC8(etc_cap_base, "passwd", O_RDONLY));
	FUNC3(cap_getrights, fd, &rights);
	FUNC2(rights, baserights);

	/*
	 * Enter capability mode; now ALL lookups are strictly relative.
	 */
	FUNC5(FUNC6());

	/*
	 * Relative lookups on regular files or capabilities with CAP_LOOKUP
	 * ought to succeed.
	 */
	FUNC3(openat, etc, "passwd", O_RDONLY);
	FUNC3(openat, etc_cap_ro, "passwd", O_RDONLY);
	FUNC3(openat, etc_cap_base, "passwd", O_RDONLY);
	FUNC3(openat, etc_cap_all, "passwd", O_RDONLY);

	/*
	 * Lookup relative to capabilities without CAP_LOOKUP should fail.
	 */
	FUNC1(openat, etc_cap, "passwd", O_RDONLY);

	/*
	 * Absolute lookups should fail.
	 */
	FUNC0(openat, AT_FDCWD, "/etc/passwd", O_RDONLY);
	FUNC1(openat, etc, "/etc/passwd", O_RDONLY);

	/*
	 * Lookups containing '..' should fail in capability mode.
	 */
	FUNC1(openat, etc, "../etc/passwd", O_RDONLY);
	FUNC1(openat, etc_cap_ro, "../etc/passwd", O_RDONLY);
	FUNC1(openat, etc_cap_base, "../etc/passwd", O_RDONLY);

	FUNC5(fd = FUNC8(etc, "passwd", O_RDONLY));
	FUNC3(cap_getrights, fd, &rights);

	/*
	 * A file opened relative to a capability should itself be a capability.
	 */
	FUNC5(fd = FUNC8(etc_cap_base, "passwd", O_RDONLY));
	FUNC3(cap_getrights, fd, &rights);
	FUNC2(rights, baserights);

	return success;
}