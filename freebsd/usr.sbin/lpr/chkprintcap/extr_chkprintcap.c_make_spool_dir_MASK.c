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
struct stat {int dummy; } ;
struct printer {char* spool_dir; scalar_t__ daemon_user; int /*<<< orphan*/  printer; } ;
struct group {scalar_t__ gr_gid; } ;

/* Variables and functions */
 scalar_t__ SPOOL_DIR_MODE ; 
 int S_IRUSR ; 
 int S_IXUSR ; 
 scalar_t__ FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FUNC1 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct group* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct printer const*,struct stat*) ; 
 int /*<<< orphan*/  problems ; 
 scalar_t__ FUNC7 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 

__attribute__((used)) static void
FUNC9(const struct printer *pp)
{
	char *sd = pp->spool_dir;
	struct group *gr;
	struct stat stab;

	if (FUNC5(sd, S_IRUSR | S_IXUSR) < 0) {
		problems++;
		FUNC8("%s: mkdir %s", pp->printer, sd);
		return;
	}
	gr = FUNC4("daemon");
	if (gr == NULL)
		FUNC3(++problems, "cannot locate daemon group");

	if (FUNC1(sd, pp->daemon_user, gr->gr_gid) < 0) {
		++problems;
		FUNC8("%s: cannot change ownership to %ld:%ld", sd,
		     (long)pp->daemon_user, (long)gr->gr_gid);
		return;
	}

	if (FUNC0(sd, SPOOL_DIR_MODE) < 0) {
		++problems;
		FUNC8("%s: cannot change mode to %lo", sd, (long)SPOOL_DIR_MODE);
		return;
	}
	if (FUNC7(sd, &stab) < 0)
		FUNC2(++problems, "stat: %s", sd);

	FUNC6(pp, &stab);
}