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
struct pidfh {int dummy; } ;
struct ctx {char* ifnam; int /*<<< orphan*/  flags; struct pidfh* pfh; int /*<<< orphan*/  pidfile; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_DAEMON ; 
 int /*<<< orphan*/  LOG_PID ; 
 int /*<<< orphan*/  LOG_USER ; 
 char* PIDFILE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pidfh* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pidfh*) ; 
 int /*<<< orphan*/  FUNC5 (struct pidfh*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,char*,...) ; 
 int syslog_open ; 
 int /*<<< orphan*/  syslog_title ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static void
FUNC8(struct ctx *ctx)
{
	struct pidfh *pfh;
	pid_t opid;

	FUNC6(ctx->pidfile, 127, PIDFILE, ctx->ifnam);

	pfh = FUNC3(ctx->pidfile, 0600, &opid);
	if (pfh == NULL) {
		FUNC7("Cannot create pidfile %s", ctx->pidfile);
		return;
	}

	if (FUNC0(0, 0) == -1) {
		FUNC7("Cannot daemonize");
		FUNC4(pfh);
		return;
	}
	
	FUNC5(pfh);
	ctx->pfh = pfh;
	ctx->flags |= FLG_DAEMON;

	FUNC6(syslog_title, 63, "%s:%s", FUNC1(), ctx->ifnam);
	FUNC2(syslog_title, LOG_PID, LOG_USER);
	syslog_open = 1;
}