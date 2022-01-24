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
struct group {int dummy; } ;

/* Variables and functions */
 struct group* FUNC0 (struct group*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct group*,int /*<<< orphan*/ ) ; 
 struct passwd* FUNC2 (char*) ; 
 char* FUNC3 (char*,char*) ; 

__attribute__((used)) static void
FUNC4(struct group **grp, char *members)
{
	struct passwd *pwd;
	char *p;
	char tok[] = ", \t";

	if (members == NULL)
		return;
	for (p = FUNC3(members, tok); p != NULL; p = FUNC3(NULL, tok)) {
		pwd = FUNC2(p);
		if (FUNC1(*grp, pwd->pw_name))
			continue;
		*grp = FUNC0(*grp, pwd->pw_name);
	}
}