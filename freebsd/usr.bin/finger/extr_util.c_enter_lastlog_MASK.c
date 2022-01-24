#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ tv_sec; } ;
struct utmpx {scalar_t__ ut_type; TYPE_1__ ut_tv; int /*<<< orphan*/  ut_host; int /*<<< orphan*/  ut_line; } ;
struct TYPE_8__ {scalar_t__ info; scalar_t__ loginat; int /*<<< orphan*/  host; int /*<<< orphan*/  tty; struct TYPE_8__* next; } ;
typedef  TYPE_2__ WHERE ;
struct TYPE_9__ {TYPE_2__* whead; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ PERSON ;

/* Variables and functions */
 scalar_t__ LASTLOG ; 
 scalar_t__ LOGGEDIN ; 
 scalar_t__ USER_PROCESS ; 
 int /*<<< orphan*/  UTXDB_LASTLOGIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct utmpx* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (TYPE_3__*) ; 

void
FUNC6(PERSON *pn)
{
	WHERE *w;
	struct utmpx *ut = NULL;
	char doit = 0;

	if (FUNC2(UTXDB_LASTLOGIN, NULL) == 0)
		ut = FUNC1(pn->name);
	if ((w = pn->whead) == NULL)
		doit = 1;
	else if (ut != NULL && ut->ut_type == USER_PROCESS) {
		/* if last login is earlier than some current login */
		for (; !doit && w != NULL; w = w->next)
			if (w->info == LOGGEDIN &&
			    w->loginat < ut->ut_tv.tv_sec)
				doit = 1;
		/*
		 * and if it's not any of the current logins
		 * can't use time comparison because there may be a small
		 * discrepancy since login calls time() twice
		 */
		for (w = pn->whead; doit && w != NULL; w = w->next)
			if (w->info == LOGGEDIN &&
			    FUNC3(w->tty, ut->ut_line) == 0)
				doit = 0;
	}
	if (ut != NULL && doit) {
		w = FUNC5(pn);
		w->info = LASTLOG;
		FUNC4(w->tty, ut->ut_line);
		FUNC4(w->host, ut->ut_host);
		w->loginat = ut->ut_tv.tv_sec;
	}
	FUNC0();
}