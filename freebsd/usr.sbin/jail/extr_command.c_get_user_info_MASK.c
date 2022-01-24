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
struct passwd {int /*<<< orphan*/  pw_name; int /*<<< orphan*/  pw_gid; } ;
struct cfjail {int dummy; } ;
typedef  int /*<<< orphan*/  login_cap_t ;

/* Variables and functions */
 scalar_t__ errno ; 
 struct passwd* FUNC0 (char const*) ; 
 struct passwd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cfjail*,char*,char const*,...) ; 
 int /*<<< orphan*/ * FUNC5 (struct passwd const*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static int
FUNC7(struct cfjail *j, const char *username,
    const struct passwd **pwdp, login_cap_t **lcapp)
{
	const struct passwd *pwd;

	errno = 0;
	*pwdp = pwd = username ? FUNC0(username) : FUNC1(FUNC2());
	if (pwd == NULL) {
		if (errno)
			FUNC4(j, "getpwnam%s%s: %s", username ? " " : "",
			    username ? username : "", FUNC6(errno));
		else if (username)
			FUNC4(j, "%s: no such user", username);
		else
			FUNC4(j, "unknown uid %d", FUNC2());
		return -1;
	}
	*lcapp = FUNC5(pwd);
	if (*lcapp == NULL) {
		FUNC4(j, "getpwclass %s: %s", pwd->pw_name,
		    FUNC6(errno));
		return -1;
	}
	/* Set the groups while the group file is still available */
	if (FUNC3(pwd->pw_name, pwd->pw_gid) < 0) {
		FUNC4(j, "initgroups %s: %s", pwd->pw_name,
		    FUNC6(errno));
		return -1;
	}
	return 0;
}