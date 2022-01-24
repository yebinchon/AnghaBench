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
struct nmreq_header {int /*<<< orphan*/  nr_reqtype; } ;
struct TestContext {char* ifname_ext; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETMAP_REQ_SYNC_KLOOP_STOP ; 
 int /*<<< orphan*/  NIOCCTRL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nmreq_header*) ; 
 int /*<<< orphan*/  FUNC1 (struct nmreq_header*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int
FUNC4(struct TestContext *ctx)
{
	struct nmreq_header hdr;
	int ret;

	FUNC3("Testing NETMAP_REQ_SYNC_KLOOP_STOP on '%s'\n", ctx->ifname_ext);

	FUNC1(&hdr, ctx->ifname_ext);
	hdr.nr_reqtype = NETMAP_REQ_SYNC_KLOOP_STOP;
	ret            = FUNC0(ctx->fd, NIOCCTRL, &hdr);
	if (ret != 0) {
		FUNC2("ioctl(/dev/netmap, NIOCCTRL, SYNC_KLOOP_STOP)");
	}

	return ret;
}