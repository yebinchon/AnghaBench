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
struct stat {int st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRONDIR ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERROR_EXIT ; 
 scalar_t__ OK ; 
 int /*<<< orphan*/  SPOOL_DIR ; 
 int S_IFDIR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

void
FUNC6()
{
	struct stat	sb;

	/* first check for CRONDIR ("/var/cron" or some such)
	 */
	if (FUNC3(CRONDIR, &sb) < OK && errno == ENOENT) {
		FUNC4("%s", CRONDIR);
		if (OK == FUNC2(CRONDIR, 0700)) {
			FUNC5("%s: created", CRONDIR);
			FUNC3(CRONDIR, &sb);
		} else {
			FUNC1(ERROR_EXIT, "%s: mkdir", CRONDIR);
		}
	}
	if (!(sb.st_mode & S_IFDIR))
		FUNC1(ERROR_EXIT, "'%s' is not a directory, bailing out", CRONDIR);
	if (FUNC0(CRONDIR) < OK)
		FUNC1(ERROR_EXIT, "cannot chdir(%s), bailing out", CRONDIR);

	/* CRONDIR okay (now==CWD), now look at SPOOL_DIR ("tabs" or some such)
	 */
	if (FUNC3(SPOOL_DIR, &sb) < OK && errno == ENOENT) {
		FUNC4("%s", SPOOL_DIR);
		if (OK == FUNC2(SPOOL_DIR, 0700)) {
			FUNC5("%s: created", SPOOL_DIR);
			FUNC3(SPOOL_DIR, &sb);
		} else {
			FUNC1(ERROR_EXIT, "%s: mkdir", SPOOL_DIR);
		}
	}
	if (!(sb.st_mode & S_IFDIR))
		FUNC1(ERROR_EXIT, "'%s' is not a directory, bailing out", SPOOL_DIR);
}