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
struct ctx {int con_net_stat; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char const*,char*,int*) ; 
 int /*<<< orphan*/  timers ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,struct ctx*) ; 
 int /*<<< orphan*/  tmr_cgreg ; 

__attribute__((used)) static void
FUNC3(void *arg, const char *resp)
{
	struct ctx *ctx = arg;
	int n, reg;

	n = FUNC1(resp, "+CGREG: %*d,%d", &reg);
	if (n != 1) {
		n = FUNC1(resp, "+CGREG: %d", &reg);
		if (n != 1)
			return;
	}

	if (ctx->con_net_stat != 1 && ctx->con_net_stat != 5) {
		FUNC2(&timers, 1, 1, tmr_cgreg, ctx);
	}
	else {
		FUNC2(&timers, 1, 30, tmr_cgreg, ctx);
	}

	if (ctx->con_net_stat == reg)
		return;

	ctx->con_net_stat = reg;
	FUNC0(ctx->fd, "AT+COPS?\r\n");
}