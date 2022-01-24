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
struct ctx {int con_net_type; int con_net_stat; int con_status; int /*<<< orphan*/  pdp_ctx; int /*<<< orphan*/  fd; int /*<<< orphan*/ * con_oper; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_NOTICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * network_access_type ; 
 int /*<<< orphan*/ * network_reg_status ; 
 int FUNC3 (char const*,char*,char*,int*) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(void *arg, const char *resp)
{
	struct ctx *ctx = arg;
	int n, at;
	char opr[64];

	n = FUNC3(resp, "+COPS: %*d,%*d,\"%[^\"]\",%d",
	    opr, &at);
	if (n != 2)
		return;

	if (ctx->con_oper != NULL) {
		if (ctx->con_net_type == at &&
		    FUNC4(opr, ctx->con_oper) == 0)
			return;
		FUNC1(ctx->con_oper);
	}

	ctx->con_oper = FUNC5(opr);
	ctx->con_net_type = at;

	if (ctx->con_net_stat == 1 || ctx->con_net_stat == 5) {
		FUNC2(LOG_NOTICE, "%s to \"%s\" (%s)",
		    network_reg_status[ctx->con_net_stat],
		    *ctx->con_oper, network_access_type[ctx->con_net_type]);
		if (ctx->con_status != 1) {
			FUNC0(ctx->fd, "AT_OWANCALL=%d,1,1\r\n",
			    ctx->pdp_ctx);
		}
	}
	else {
		FUNC2(LOG_NOTICE, "%s (%s)",
		    network_reg_status[ctx->con_net_stat],
		    network_access_type[ctx->con_net_type]);
	}
}