#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  regex_t ;
struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {int /*<<< orphan*/ * re_data; } ;
typedef  TYPE_1__ PLAN ;
typedef  TYPE_2__ OPTION ;

/* Variables and functions */
 int F_IGNCASE ; 
 int LINE_MAX ; 
 int REG_ICASE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 char* FUNC3 (TYPE_2__*,char***) ; 
 TYPE_1__* FUNC4 (TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *,char*,int) ; 
 int regexp_flags ; 

PLAN *
FUNC7(OPTION *option, char ***argvp)
{
	PLAN *new;
	char *pattern;
	regex_t *pre;
	int errcode;
	char errbuf[LINE_MAX];

	if ((pre = FUNC2(sizeof(regex_t))) == NULL)
		FUNC0(1, NULL);

	pattern = FUNC3(option, argvp);

	if ((errcode = FUNC5(pre, pattern,
	    regexp_flags | (option->flags & F_IGNCASE ? REG_ICASE : 0))) != 0) {
		FUNC6(errcode, pre, errbuf, sizeof errbuf);
		FUNC1(1, "%s: %s: %s",
		     option->flags & F_IGNCASE ? "-iregex" : "-regex",
		     pattern, errbuf);
	}

	new = FUNC4(option);
	new->re_data = pre;

	return new;
}