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
struct TYPE_2__ {int /*<<< orphan*/  nro_reqtype; } ;
struct nmreq_opt_csb {uintptr_t csb_atok; uintptr_t csb_ktoa; TYPE_1__ nro_opt; } ;
struct TestContext {int /*<<< orphan*/  nr_flags; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  NETMAP_REQ_OPT_CSB ; 
 int /*<<< orphan*/  NR_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (struct TestContext*) ; 
 int /*<<< orphan*/  FUNC1 (struct nmreq_opt_csb*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct TestContext*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct TestContext*) ; 

__attribute__((used)) static int
FUNC4(struct TestContext *ctx)
{
	struct nmreq_opt_csb opt;
	int ret;

	FUNC1(&opt, 0, sizeof(opt));
	opt.nro_opt.nro_reqtype = NETMAP_REQ_OPT_CSB;
	opt.csb_atok            = (uintptr_t)0x10;
	opt.csb_ktoa            = (uintptr_t)0x800;
	FUNC3(&opt.nro_opt, ctx);

	ctx->nr_flags = NR_EXCLUSIVE;
	ret           = FUNC2(ctx);
	FUNC0(ctx);

	return (ret < 0) ? 0 : -1;
}