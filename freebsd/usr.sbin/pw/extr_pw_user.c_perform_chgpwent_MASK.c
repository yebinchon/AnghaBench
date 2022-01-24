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
struct passwd {int /*<<< orphan*/  pw_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_IOERR ; 
 int FUNC0 (char*,char const*,struct passwd*) ; 
 int FUNC1 (char const*,struct passwd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct passwd* FUNC4 (struct passwd*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void
FUNC6(const char *name, struct passwd *pwd, char *nispasswd)
{
	int rc;
	struct passwd *nispwd;

	/* duplicate for nis so that chgpwent is not modifying before NIS */
	if (nispasswd && *nispasswd == '/')
		nispwd = FUNC4(pwd);

	rc = FUNC1(name, pwd);
	if (rc == -1)
		FUNC3(EX_IOERR, "user '%s' does not exist (NIS?)", pwd->pw_name);
	else if (rc != 0)
		FUNC2(EX_IOERR, "passwd file update");

	if (nispasswd && *nispasswd == '/') {
		rc = FUNC0(nispasswd, name, nispwd);
		if (rc == -1)
			FUNC5("User '%s' not found in NIS passwd", pwd->pw_name);
		else if (rc != 0)
			FUNC5("NIS passwd update");
		/* NOTE: NIS-only update errors are not fatal */
	}
}