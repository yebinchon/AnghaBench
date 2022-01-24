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
struct nmreq_sync_kloop_start {int sleep_us; } ;
struct nmreq_header {uintptr_t nr_body; uintptr_t nr_options; int /*<<< orphan*/  nr_reqtype; } ;
struct TestContext {char* ifname_ext; scalar_t__ sem; int /*<<< orphan*/  fd; scalar_t__ nr_opt; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  NETMAP_REQ_SYNC_KLOOP_START ; 
 int /*<<< orphan*/  NIOCCTRL ; 
 scalar_t__ THRET_FAILURE ; 
 scalar_t__ THRET_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nmreq_header*) ; 
 int /*<<< orphan*/  FUNC1 (struct nmreq_sync_kloop_start*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nmreq_header*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void *
FUNC7(void *opaque)
{
	struct TestContext *ctx = opaque;
	struct nmreq_sync_kloop_start req;
	struct nmreq_header hdr;
	int ret;

	FUNC4("Testing NETMAP_REQ_SYNC_KLOOP_START on '%s'\n", ctx->ifname_ext);

	FUNC2(&hdr, ctx->ifname_ext);
	hdr.nr_reqtype = NETMAP_REQ_SYNC_KLOOP_START;
	hdr.nr_body    = (uintptr_t)&req;
	hdr.nr_options = (uintptr_t)ctx->nr_opt;
	FUNC1(&req, 0, sizeof(req));
	req.sleep_us = 500;
	ret          = FUNC0(ctx->fd, NIOCCTRL, &hdr);
	if (ret != 0) {
		FUNC3("ioctl(/dev/netmap, NIOCCTRL, SYNC_KLOOP_START)");
	}

	if (ctx->sem) {
		FUNC6(ctx->sem);
	}

	FUNC5(ret ? (void *)THRET_FAILURE : (void *)THRET_SUCCESS);
}