#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_ino; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_data; } ;
typedef  TYPE_1__ PLAN ;
typedef  int /*<<< orphan*/  OPTION ;

/* Variables and functions */
 int FTS_NOSTAT ; 
 int FTS_PHYSICAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int ftsoptions ; 
 int FUNC1 (char*,struct stat*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char***) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,struct stat*) ; 

PLAN *
FUNC5(OPTION *option, char ***argvp)
{
	char *fn;
	PLAN *new;
	struct stat sb;
	int error;

	fn = FUNC2(option, argvp);
	ftsoptions &= ~FTS_NOSTAT;

	new = FUNC3(option);
	if (ftsoptions & FTS_PHYSICAL)
		error = FUNC1(fn, &sb);
	else
		error = FUNC4(fn, &sb);
	if (error != 0)
		FUNC0(1, "%s", fn);
	new->i_data = sb.st_ino;
	return new;
}