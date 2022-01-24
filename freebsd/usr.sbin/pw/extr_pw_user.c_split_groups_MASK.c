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
struct group {int /*<<< orphan*/  gr_name; } ;
typedef  int /*<<< orphan*/  StringList ;

/* Variables and functions */
 struct group* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 char* FUNC4 (char*,char*) ; 

__attribute__((used)) static void
FUNC5(StringList **groups, char *groupsstr)
{
	struct group *grp;
	char *p;
	char tok[] = ", \t";

	if (*groups == NULL)
		*groups = FUNC3();
	for (p = FUNC4(groupsstr, tok); p != NULL; p = FUNC4(NULL, tok)) {
		grp = FUNC0(p);
		FUNC2(*groups, FUNC1(grp->gr_name));
	}
}