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
struct nmreq_option {scalar_t__ nro_status; } ;
struct nmreq_opt_csb {struct nmreq_option nro_opt; } ;
struct nmreq_header {uintptr_t nr_options; uintptr_t nr_body; int /*<<< orphan*/  nr_reqtype; } ;
struct TestContext {char* ifname_ext; int /*<<< orphan*/  fd; scalar_t__ nr_opt; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETMAP_REQ_CSB_ENABLE ; 
 int /*<<< orphan*/  NIOCCTRL ; 
 int FUNC0 (struct nmreq_option*,struct nmreq_option*) ; 
 int /*<<< orphan*/  FUNC1 (struct TestContext*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nmreq_header*) ; 
 int /*<<< orphan*/  FUNC3 (struct nmreq_header*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (struct TestContext*,struct nmreq_opt_csb*) ; 

__attribute__((used)) static int
FUNC7(struct TestContext *ctx)
{
	struct nmreq_option saveopt;
	struct nmreq_opt_csb opt;
	struct nmreq_header hdr;
	int ret;

	ret = FUNC6(ctx, &opt);
	if (ret != 0) {
		return ret;
	}
	saveopt = opt.nro_opt;
	saveopt.nro_status = 0;

	FUNC3(&hdr, ctx->ifname_ext);
	hdr.nr_reqtype = NETMAP_REQ_CSB_ENABLE;
	hdr.nr_options = (uintptr_t)ctx->nr_opt;
	hdr.nr_body = (uintptr_t)NULL;

	FUNC5("Testing NETMAP_REQ_CSB_ENABLE on '%s'\n", ctx->ifname_ext);

	ret           = FUNC2(ctx->fd, NIOCCTRL, &hdr);
	if (ret != 0) {
		FUNC4("ioctl(/dev/netmap, NIOCCTRL, CSB_ENABLE)");
		return ret;
	}

	ret = FUNC0(&opt.nro_opt, &saveopt);
	FUNC1(ctx);

	return ret;
}