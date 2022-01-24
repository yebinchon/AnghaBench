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
struct nmreq_vale_polling {int dummy; } ;
struct nmreq_header {uintptr_t nr_body; int /*<<< orphan*/  nr_reqtype; } ;
struct TestContext {char* bdgname; char* ifname_ext; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  NETMAP_REQ_VALE_POLLING_DISABLE ; 
 int /*<<< orphan*/  NIOCCTRL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nmreq_header*) ; 
 int /*<<< orphan*/  FUNC1 (struct nmreq_vale_polling*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nmreq_header*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,char*) ; 

__attribute__((used)) static int
FUNC6(struct TestContext *ctx)
{
	struct nmreq_vale_polling req;
	struct nmreq_header hdr;
	char vpname[256];
	int ret;

	FUNC5(vpname, sizeof(vpname), "%s:%s", ctx->bdgname, ctx->ifname_ext);
	FUNC4("Testing NETMAP_REQ_VALE_POLLING_DISABLE on '%s'\n", vpname);

	FUNC2(&hdr, vpname);
	hdr.nr_reqtype = NETMAP_REQ_VALE_POLLING_DISABLE;
	hdr.nr_body    = (uintptr_t)&req;
	FUNC1(&req, 0, sizeof(req));
	ret = FUNC0(ctx->fd, NIOCCTRL, &hdr);
	if (ret != 0) {
		FUNC3("ioctl(/dev/netmap, NIOCCTRL, VALE_POLLING_DISABLE)");
		return ret;
	}

	return 0;
}