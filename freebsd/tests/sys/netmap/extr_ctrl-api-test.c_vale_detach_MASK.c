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
typedef  int /*<<< orphan*/  vpname ;
struct nmreq_vale_detach {int dummy; } ;
struct nmreq_header {uintptr_t nr_body; int /*<<< orphan*/  nr_reqtype; } ;
struct TestContext {char* bdgname; char* ifname_ext; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETMAP_REQ_VALE_DETACH ; 
 int /*<<< orphan*/  NIOCCTRL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nmreq_header*) ; 
 int /*<<< orphan*/  FUNC1 (struct nmreq_header*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char*) ; 

__attribute__((used)) static int
FUNC5(struct TestContext *ctx)
{
	struct nmreq_header hdr;
	struct nmreq_vale_detach req;
	char vpname[256];
	int ret;

	FUNC4(vpname, sizeof(vpname), "%s:%s", ctx->bdgname, ctx->ifname_ext);

	FUNC3("Testing NETMAP_REQ_VALE_DETACH on '%s'\n", vpname);
	FUNC1(&hdr, vpname);
	hdr.nr_reqtype = NETMAP_REQ_VALE_DETACH;
	hdr.nr_body    = (uintptr_t)&req;
	ret            = FUNC0(ctx->fd, NIOCCTRL, &hdr);
	if (ret != 0) {
		FUNC2("ioctl(/dev/netmap, NIOCCTRL, VALE_DETACH)");
		return ret;
	}

	return 0;
}