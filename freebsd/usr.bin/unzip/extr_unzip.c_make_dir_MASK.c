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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char const*,struct stat*) ; 
 scalar_t__ FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5(const char *path, int mode)
{
	struct stat sb;

	if (FUNC2(path, &sb) == 0) {
		if (FUNC0(sb.st_mode))
			return;
		/*
		 * Normally, we should either ask the user about removing
		 * the non-directory of the same name as a directory we
		 * wish to create, or respect the -n or -o command-line
		 * options.  However, this may lead to a later failure or
		 * even compromise (if this non-directory happens to be a
		 * symlink to somewhere unsafe), so we don't.
		 */

		/*
		 * Don't check unlink() result; failure will cause mkdir()
		 * to fail later, which we will catch.
		 */
		(void)FUNC4(path);
	}
	if (FUNC3(path, mode) != 0 && errno != EEXIST)
		FUNC1("mkdir('%s')", path);
}