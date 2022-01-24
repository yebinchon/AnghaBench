#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  PLAN ;
typedef  TYPE_1__ OPTION ;

/* Variables and functions */
 int F_MAXDEPTH ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 void* maxdepth ; 
 void* mindepth ; 
 char* FUNC2 (TYPE_1__*,char***) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 

PLAN *
FUNC4(OPTION *option, char ***argvp)
{
	char *dstr;
	PLAN *new;

	dstr = FUNC2(option, argvp);
	if (dstr[0] == '-')
		/* all other errors handled by find_parsenum() */
		FUNC0(1, "%s: %s: value must be positive", option->name, dstr);

	new = FUNC3(option);
	if (option->flags & F_MAXDEPTH)
		maxdepth = FUNC1(new, option->name, dstr, NULL);
	else
		mindepth = FUNC1(new, option->name, dstr, NULL);
	return new;
}