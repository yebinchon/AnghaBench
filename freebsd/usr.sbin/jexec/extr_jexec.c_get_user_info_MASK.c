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
typedef  char const* uid_t ;
struct passwd {char const* pw_name; int /*<<< orphan*/  pw_gid; } ;
typedef  int /*<<< orphan*/  login_cap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 struct passwd* FUNC2 (char const*) ; 
 struct passwd* FUNC3 (char const*) ; 
 char* FUNC4 () ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct passwd const*) ; 

__attribute__((used)) static void
FUNC7(const char *username, const struct passwd **pwdp,
    login_cap_t **lcapp)
{
	uid_t uid;
	const struct passwd *pwd;

	errno = 0;
	if (username) {
		pwd = FUNC2(username);
		if (pwd == NULL) {
			if (errno)
				FUNC0(1, "getpwnam: %s", username);
			else
				FUNC1(1, "%s: no such user", username);
		}
	} else {
		uid = FUNC4();
		pwd = FUNC3(uid);
		if (pwd == NULL) {
			if (errno)
				FUNC0(1, "getpwuid: %d", uid);
			else
				FUNC1(1, "unknown uid: %d", uid);
		}
	}
	*pwdp = pwd;
	*lcapp = FUNC6(pwd);
	if (*lcapp == NULL)
		FUNC0(1, "getpwclass: %s", pwd->pw_name);
	if (FUNC5(pwd->pw_name, pwd->pw_gid) < 0)
		FUNC0(1, "initgroups: %s", pwd->pw_name);
}