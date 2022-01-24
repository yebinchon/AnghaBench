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
struct passwd {int pw_uid; } ;
struct group {int gr_gid; } ;

/* Variables and functions */
#define  GRPQUOTA 129 
#define  USRQUOTA 128 
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 struct group* FUNC2 (char const*) ; 
 struct passwd* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

int
FUNC6(const char *name, int quotatype)
{
	struct passwd *pw;
	struct group *gr;

	if (FUNC0(name))
		return (FUNC1(name));
	switch(quotatype) {
	case USRQUOTA:
		if ((pw = FUNC3(name)))
			return (pw->pw_uid);
		FUNC5("%s: no such user", name);
		FUNC4(3);
		break;
	case GRPQUOTA:
		if ((gr = FUNC2(name)))
			return (gr->gr_gid);
		FUNC5("%s: no such group", name);
		FUNC4(3);
		break;
	default:
		FUNC5("%d: unknown quota type", quotatype);
		FUNC4(3);
		break;
	}
	FUNC4(1);
	return (-1);
}