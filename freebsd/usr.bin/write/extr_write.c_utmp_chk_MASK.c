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
struct utmpx {scalar_t__ ut_type; int /*<<< orphan*/  ut_user; int /*<<< orphan*/  ut_line; } ;

/* Variables and functions */
 scalar_t__ USER_PROCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct utmpx* FUNC1 (struct utmpx*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC4(char *user, char *tty)
{
	struct utmpx lu, *u;

	FUNC3(lu.ut_line, tty, sizeof lu.ut_line);
	while ((u = FUNC1(&lu)) != NULL)
		if (u->ut_type == USER_PROCESS &&
		    FUNC2(user, u->ut_user) == 0) {
			FUNC0();
			return(0);
		}
	FUNC0();
	return(1);
}