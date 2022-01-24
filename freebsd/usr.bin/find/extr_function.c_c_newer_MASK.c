#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_9__ {scalar_t__ tv_sec; int tv_nsec; } ;
struct stat {TYPE_1__ st_mtim; TYPE_1__ st_birthtim; TYPE_1__ st_atim; TYPE_1__ st_ctim; } ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {TYPE_1__ t_data; } ;
typedef  TYPE_2__ PLAN ;
typedef  TYPE_3__ OPTION ;

/* Variables and functions */
 int FTS_NOSTAT ; 
 int FTS_PHYSICAL ; 
 int F_TIME2_A ; 
 int F_TIME2_B ; 
 int F_TIME2_C ; 
 int F_TIME2_T ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int ftsoptions ; 
 scalar_t__ FUNC2 (char*) ; 
 int FUNC3 (char*,struct stat*) ; 
 char* FUNC4 (TYPE_3__*,char***) ; 
 TYPE_2__* FUNC5 (TYPE_3__*) ; 
 int FUNC6 (char*,struct stat*) ; 

PLAN *
FUNC7(OPTION *option, char ***argvp)
{
	char *fn_or_tspec;
	PLAN *new;
	struct stat sb;
	int error;

	fn_or_tspec = FUNC4(option, argvp);
	ftsoptions &= ~FTS_NOSTAT;

	new = FUNC5(option);
	/* compare against what */
	if (option->flags & F_TIME2_T) {
		new->t_data.tv_sec = FUNC2(fn_or_tspec);
		if (new->t_data.tv_sec == (time_t) -1)
			FUNC1(1, "Can't parse date/time: %s", fn_or_tspec);
		/* Use the seconds only in the comparison. */
		new->t_data.tv_nsec = 999999999;
	} else {
		if (ftsoptions & FTS_PHYSICAL)
			error = FUNC3(fn_or_tspec, &sb);
		else
			error = FUNC6(fn_or_tspec, &sb);
		if (error != 0)
			FUNC0(1, "%s", fn_or_tspec);
		if (option->flags & F_TIME2_C)
			new->t_data = sb.st_ctim;
		else if (option->flags & F_TIME2_A)
			new->t_data = sb.st_atim;
#if HAVE_STRUCT_STAT_ST_BIRTHTIME
		else if (option->flags & F_TIME2_B)
			new->t_data = sb.st_birthtim;
#endif
		else
			new->t_data = sb.st_mtim;
	}
	return new;
}