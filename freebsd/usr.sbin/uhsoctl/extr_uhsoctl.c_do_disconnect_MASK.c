#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_addr; } ;
struct ctx {int flags; int /*<<< orphan*/  resolv_path; int /*<<< orphan*/  ifnam; TYPE_2__ ip; int /*<<< orphan*/  fd; int /*<<< orphan*/  pdp_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int IPASSIGNED ; 
 int /*<<< orphan*/  FUNC0 (struct ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sockaddr*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct ctx *ctx)
{
	struct sockaddr_in sin, mask;

	/* Disconnect */
	FUNC0(ctx, NULL, NULL, NULL, "AT_OWANCALL=%d,0,0\r\n",
	    ctx->pdp_ctx);
	FUNC1(ctx->fd);

	/* Remove ip-address from interface */
	if (ctx->flags & IPASSIGNED) {
		sin.sin_len = mask.sin_len = sizeof(struct sockaddr_in);
		FUNC5(&mask.sin_addr.s_addr, 0xff,
		    sizeof(mask.sin_addr.s_addr));
		sin.sin_family = mask.sin_family = AF_INET;
		FUNC4(&sin.sin_addr.s_addr, &ctx->ip.s_addr,
		    sizeof(sin.sin_addr.s_addr));
		FUNC3(ctx->ifnam, (struct sockaddr *)&sin,
		    (struct sockaddr *)&mask);

		FUNC2(ctx->ifnam);
		ctx->flags &= ~IPASSIGNED;
	}

	/* Attempt to reset resolv.conf */
	FUNC6(ctx, ctx->resolv_path, 0);
}