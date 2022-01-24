#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int time_t ;
struct TYPE_2__ {int tv_sec; } ;
struct utmpx {int ut_type; TYPE_1__ ut_tv; int /*<<< orphan*/  ut_host; int /*<<< orphan*/  ut_line; int /*<<< orphan*/  ut_user; } ;
struct tm {int dummy; } ;
struct idtab {int logout; } ;
typedef  int /*<<< orphan*/  ct ;

/* Variables and functions */
#define  BOOT_TIME 132 
#define  NEW_TIME 131 
#define  OLD_TIME 130 
#define  SHUTDOWN_TIME 129 
#define  USER_PROCESS 128 
 int /*<<< orphan*/  crmsg ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ d_first ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct tm* FUNC2 (int*) ; 
 struct tm* FUNC3 (int*) ; 
 int maxrec ; 
 scalar_t__ sflag ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,struct tm*) ; 
 int width ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,long) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ yflag ; 

__attribute__((used)) static void
FUNC9(struct utmpx *bp, struct idtab *tt)
{
	char ct[80];
	struct tm *tm;
	time_t	delta;				/* time difference */
	time_t	t;

	if (maxrec != -1 && !maxrec--)
		FUNC1(0);
	FUNC8("last");
	t = bp->ut_tv.tv_sec;
	tm = FUNC3(&t);
	(void) FUNC4(ct, sizeof(ct), d_first ?
	    (yflag ? "%a %e %b %Y %R" : "%a %e %b %R") :
	    (yflag ? "%a %b %e %Y %R" : "%a %b %e %R"), tm);
	switch (bp->ut_type) {
	case BOOT_TIME:
		FUNC7("{:user/%-42s/%s}", "boot time");
		break;
	case SHUTDOWN_TIME:
		FUNC7("{:user/%-42s/%s}", "shutdown time");
		break;
	case OLD_TIME:
		FUNC7("{:user/%-42s/%s}", "old time");
		break;
	case NEW_TIME:
		FUNC7("{:user/%-42s/%s}", "new time");
		break;
	case USER_PROCESS:
		FUNC7("{:user/%-10s/%s} {:tty/%-8s/%s} {:from/%-22.22s/%s}",
		    bp->ut_user, bp->ut_line, bp->ut_host);
		break;
	}
	FUNC5("seconds", "%lu", (unsigned long)t);
	FUNC7(FUNC0(" {:login-time/%s%c/%s}"), ct, tt == NULL ? '\n' : ' ');
	if (tt == NULL)
		goto end;
	if (!tt->logout) {
		FUNC7("  {:logout-time/still logged in}\n");
		goto end;
	}
	if (tt->logout < 0) {
		tt->logout = -tt->logout;
		FUNC7("- {:logout-reason/%s}", crmsg);
	} else {
		tm = FUNC3(&tt->logout);
		(void) FUNC4(ct, sizeof(ct), "%R", tm);
		FUNC5("seconds", "%lu", (unsigned long)tt->logout);
		FUNC7(FUNC0("- {:logout-time/%s}"), ct);
	}
	delta = tt->logout - bp->ut_tv.tv_sec;
	FUNC5("seconds", "%ld", (long)delta);
	if (sflag) {
		FUNC7("  ({:session-length/%8ld})\n", (long)delta);
	} else {
		tm = FUNC2(&delta);
		(void) FUNC4(ct, sizeof(ct), width >= 8 ? "%T" : "%R", tm);
		if (delta < 86400)
			FUNC7(FUNC0("  ({:session-length/%s})\n"), ct);
		else
			FUNC7(FUNC0(" ({:session-length/%ld+%s})\n"),
			    (long)delta / 86400, ct);
	}

end:
	FUNC6("last");
}