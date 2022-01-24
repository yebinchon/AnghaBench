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
struct TYPE_2__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct utmpx {int ut_type; int ut_pid; char* ut_user; char* ut_line; char* ut_host; TYPE_1__ ut_tv; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
#define  BOOT_TIME 135 
#define  DEAD_PROCESS 134 
 int EMPTY ; 
#define  INIT_PROCESS 133 
#define  LOGIN_PROCESS 132 
#define  NEW_TIME 131 
#define  OLD_TIME 130 
#define  SHUTDOWN_TIME 129 
#define  USER_PROCESS 128 
 int /*<<< orphan*/  UTMPXPRINTID ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(const struct utmpx *ut)
{

	if (ut->ut_type == EMPTY)
		return;
	
	FUNC1("[%jd.%06u -- %.24s] ",
	    (intmax_t)ut->ut_tv.tv_sec, (unsigned int)ut->ut_tv.tv_usec,
	    FUNC0(&ut->ut_tv.tv_sec));

	switch (ut->ut_type) {
	case BOOT_TIME:
		FUNC1("system boot\n");
		return;
	case SHUTDOWN_TIME:
		FUNC1("system shutdown\n");
		return;
	case OLD_TIME:
		FUNC1("old system time\n");
		return;
	case NEW_TIME:
		FUNC1("new system time\n");
		return;
	case USER_PROCESS:
		FUNC1("user process: id=\"");
		UTMPXPRINTID;
		FUNC1("\" pid=\"%d\" user=\"%s\" line=\"%s\" host=\"%s\"\n",
		    ut->ut_pid, ut->ut_user, ut->ut_line, ut->ut_host);
		break;
	case INIT_PROCESS:
		FUNC1("init process: id=\"");
		UTMPXPRINTID;
		FUNC1("\" pid=\"%d\"\n", ut->ut_pid);
		break;
	case LOGIN_PROCESS:
		FUNC1("login process: id=\"");
		UTMPXPRINTID;
		FUNC1("\" pid=\"%d\" user=\"%s\" line=\"%s\" host=\"%s\"\n",
		    ut->ut_pid, ut->ut_user, ut->ut_line, ut->ut_host);
		break;
	case DEAD_PROCESS:
		FUNC1("dead process: id=\"");
		UTMPXPRINTID;
		FUNC1("\" pid=\"%d\"\n", ut->ut_pid);
		break;
	default:
		FUNC1("unknown record type %hu\n", ut->ut_type);
		break;
	}
}