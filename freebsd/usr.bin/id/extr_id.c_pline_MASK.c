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
struct passwd {char* pw_name; char* pw_passwd; int pw_uid; int pw_gid; char* pw_class; int /*<<< orphan*/  pw_shell; int /*<<< orphan*/  pw_dir; int /*<<< orphan*/  pw_gecos; scalar_t__ pw_expire; scalar_t__ pw_change; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct passwd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,int,int,char*,long,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct passwd *pw)
{

	if (!pw) {
		if ((pw = FUNC1(FUNC2())) == NULL)
			FUNC0(1, "getpwuid");
	}

	(void)FUNC3("%s:%s:%d:%d:%s:%ld:%ld:%s:%s:%s\n", pw->pw_name,
			pw->pw_passwd, pw->pw_uid, pw->pw_gid, pw->pw_class,
			(long)pw->pw_change, (long)pw->pw_expire, pw->pw_gecos,
			pw->pw_dir, pw->pw_shell);
}