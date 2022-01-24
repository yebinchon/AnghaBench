#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int flags; int /*<<< orphan*/  d_data; } ;
typedef  TYPE_1__ PLAN ;
typedef  TYPE_2__ OPTION ;

/* Variables and functions */
 int F_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int isdepth ; 
 scalar_t__ FUNC1 (char) ; 
 char* FUNC2 (TYPE_2__*,char***) ; 
 TYPE_1__* FUNC3 (TYPE_2__*) ; 

PLAN *
FUNC4(OPTION *option, char ***argvp)
{
	PLAN *new;
	char *str;

	new = FUNC3(option);

	str = **argvp;
	if (str && !(new->flags & F_DEPTH)) {
		/* skip leading + or - */
		if (*str == '+' || *str == '-')
			str++;
		/* skip sign */
		if (*str == '+' || *str == '-')
			str++;
		if (FUNC1(*str))
			new->flags |= F_DEPTH;
	}

	if (new->flags & F_DEPTH) {	/* -depth n */
		char *ndepth;

		ndepth = FUNC2(option, argvp);
		new->d_data = FUNC0(new, option->name, ndepth, NULL);
	} else {			/* -d */
		isdepth = 1;
	}

	return new;
}