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
typedef  scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;
struct utmpx {int /*<<< orphan*/  ut_host; int /*<<< orphan*/  ut_line; int /*<<< orphan*/  ut_user; TYPE_1__ ut_tv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(struct utmpx *u)
{
	time_t t = u->ut_tv.tv_sec;

	FUNC4("lastlogin");
	FUNC3("{:user/%-10s/%s} {:tty/%-8s/%s} {:from/%-22.22s/%s}",
		u->ut_user, u->ut_line, u->ut_host);
	FUNC1("seconds", "%lu", (unsigned long)t);
	FUNC3(" {:login-time/%.24s/%.24s}\n", FUNC0(&t));
	FUNC2("lastlogin");
}