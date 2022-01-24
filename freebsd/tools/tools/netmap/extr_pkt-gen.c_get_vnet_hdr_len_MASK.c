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
struct nmreq {int /*<<< orphan*/  nr_arg1; int /*<<< orphan*/  nr_cmd; int /*<<< orphan*/  nr_version; int /*<<< orphan*/  nr_name; } ;
struct glob_arg {int /*<<< orphan*/  virt_header; int /*<<< orphan*/  main_fd; TYPE_2__* nmd; } ;
typedef  int /*<<< orphan*/  req ;
struct TYPE_3__ {int /*<<< orphan*/  nr_name; } ;
struct TYPE_4__ {TYPE_1__ req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  NETMAP_API ; 
 int /*<<< orphan*/  NETMAP_VNET_HDR_GET ; 
 int /*<<< orphan*/  NIOCREGIF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nmreq*) ; 
 int /*<<< orphan*/  FUNC3 (struct nmreq*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct glob_arg *g)
{
	struct nmreq req;
	int err;

	FUNC3(&req, 0, sizeof(req));
	FUNC1(g->nmd->req.nr_name, req.nr_name, sizeof(req.nr_name));
	req.nr_version = NETMAP_API;
	req.nr_cmd = NETMAP_VNET_HDR_GET;
	err = FUNC2(g->main_fd, NIOCREGIF, &req);
	if (err) {
		FUNC0("Unable to get virtio-net header length");
		return;
	}

	g->virt_header = req.nr_arg1;
	if (g->virt_header) {
		FUNC0("Port requires virtio-net header, length = %d",
		  g->virt_header);
	}
}