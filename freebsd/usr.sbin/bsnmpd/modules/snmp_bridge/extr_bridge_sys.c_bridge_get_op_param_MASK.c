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
struct ifdrv {int ifd_len; int /*<<< orphan*/  ifd_cmd; struct ifbropreq* ifd_data; int /*<<< orphan*/  ifd_name; } ;
struct TYPE_4__ {scalar_t__ tv_sec; int /*<<< orphan*/  tv_usec; } ;
struct ifbropreq {int ifbop_maxage; int ifbop_hellotime; int ifbop_fwddelay; scalar_t__ ifbop_root_port; TYPE_2__ ifbop_last_tc_time; int /*<<< orphan*/  ifbop_designated_root; int /*<<< orphan*/  ifbop_root_path_cost; int /*<<< orphan*/  ifbop_holdcount; int /*<<< orphan*/  ifbop_protocol; } ;
struct TYPE_3__ {scalar_t__ tv_sec; int /*<<< orphan*/  tv_usec; } ;
struct bridge_if {int max_age; int hello_time; int fwd_delay; scalar_t__ root_port; TYPE_1__ last_tc_time; int /*<<< orphan*/  top_changes; int /*<<< orphan*/  design_root; int /*<<< orphan*/  root_cost; int /*<<< orphan*/  tx_hold_count; int /*<<< orphan*/  stp_version; int /*<<< orphan*/  bif_name; } ;
typedef  int /*<<< orphan*/  b_req ;

/* Variables and functions */
 int /*<<< orphan*/  BRDGPARAM ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SIOCGDRVSPEC ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifdrv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC5(struct bridge_if *bif)
{
	int new_root_send;
	struct ifdrv ifd;
	struct ifbropreq b_req;

	FUNC3(ifd.ifd_name, bif->bif_name, IFNAMSIZ);
	ifd.ifd_len = sizeof(b_req);
	ifd.ifd_data = &b_req;
	ifd.ifd_cmd = BRDGPARAM;

	if (FUNC0(sock, SIOCGDRVSPEC, &ifd) < 0) {
		FUNC4(LOG_ERR, "update bridge: ioctl(BRDGPARAM) failed: %s",
		    FUNC2(errno));
		return (-1);
	}

	bif->max_age = 100 * b_req.ifbop_maxage;
	bif->hello_time = 100 * b_req.ifbop_hellotime;
	bif->fwd_delay = 100 * b_req.ifbop_fwddelay;
	bif->stp_version = b_req.ifbop_protocol;
	bif->tx_hold_count = b_req.ifbop_holdcount;

	if (b_req.ifbop_root_port == 0 &&
	    bif->root_port != b_req.ifbop_root_port)
		new_root_send = 2;
	else
		new_root_send = 0;

	bif->root_port = b_req.ifbop_root_port;
	bif->root_cost = b_req.ifbop_root_path_cost;
	FUNC1(b_req.ifbop_designated_root,
	    bif->design_root);

	if (bif->last_tc_time.tv_sec != b_req.ifbop_last_tc_time.tv_sec) {
		bif->top_changes++;
		bif->last_tc_time.tv_sec = b_req.ifbop_last_tc_time.tv_sec;
		bif->last_tc_time.tv_usec = b_req.ifbop_last_tc_time.tv_usec;

		/*
		 * "The trap is not sent if a (begemotBridge)NewRoot
		 * trap is sent for the same transition."
		 */
		if (new_root_send == 0)
			return (1);
	}

	return (new_root_send);
}