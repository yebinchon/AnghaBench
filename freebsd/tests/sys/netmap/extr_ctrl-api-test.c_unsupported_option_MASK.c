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
struct nmreq_option {int nro_reqtype; int /*<<< orphan*/  nro_status; } ;
struct TestContext {char* ifname_ext; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int FUNC0 (struct nmreq_option*,struct nmreq_option*) ; 
 int /*<<< orphan*/  FUNC1 (struct TestContext*) ; 
 int /*<<< orphan*/  FUNC2 (struct nmreq_option*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct TestContext*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct nmreq_option*,struct TestContext*) ; 

__attribute__((used)) static int
FUNC6(struct TestContext *ctx)
{
	struct nmreq_option opt, save;

	FUNC4("Testing unsupported option on %s\n", ctx->ifname_ext);

	FUNC2(&opt, 0, sizeof(opt));
	opt.nro_reqtype = 1234;
	FUNC5(&opt, ctx);
	save = opt;

	if (FUNC3(ctx) >= 0)
		return -1;

	FUNC1(ctx);
	save.nro_status = EOPNOTSUPP;
	return FUNC0(&opt, &save);
}