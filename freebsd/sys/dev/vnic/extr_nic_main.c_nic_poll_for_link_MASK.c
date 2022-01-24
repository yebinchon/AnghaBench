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
struct TYPE_4__ {scalar_t__ link_up; int /*<<< orphan*/  speed; int /*<<< orphan*/  duplex; int /*<<< orphan*/  msg; } ;
union nic_mbx {TYPE_2__ link_status; } ;
typedef  size_t uint8_t ;
struct nicpf {size_t num_vf_en; scalar_t__* link; int /*<<< orphan*/  check_link; int /*<<< orphan*/ * speed; int /*<<< orphan*/ * duplex; int /*<<< orphan*/ * mbx_lock; int /*<<< orphan*/  node; int /*<<< orphan*/ * vf_lmac_map; TYPE_1__* vf_info; } ;
struct bgx_link_status {scalar_t__ link_up; int /*<<< orphan*/  speed; int /*<<< orphan*/  duplex; } ;
struct TYPE_3__ {int /*<<< orphan*/  vf_enabled; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIC_MBOX_MSG_BGX_LINK_CHANGE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,size_t,struct bgx_link_status*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,void (*) (void*),struct nicpf*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (struct nicpf*,size_t,union nic_mbx*) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	union nic_mbx mbx = {};
	struct nicpf *nic;
	struct bgx_link_status link;
	uint8_t vf, bgx, lmac;

	nic = (struct nicpf *)arg;

	mbx.link_status.msg = NIC_MBOX_MSG_BGX_LINK_CHANGE;

	for (vf = 0; vf < nic->num_vf_en; vf++) {
		/* Poll only if VF is UP */
		if (!nic->vf_info[vf].vf_enabled)
			continue;

		/* Get BGX, LMAC indices for the VF */
		bgx = FUNC0(nic->vf_lmac_map[vf]);
		lmac = FUNC1(nic->vf_lmac_map[vf]);
		/* Get interface link status */
		FUNC2(nic->node, bgx, lmac, &link);

		/* Inform VF only if link status changed */
		if (nic->link[vf] == link.link_up)
			continue;

		if (!nic->mbx_lock[vf]) {
			nic->link[vf] = link.link_up;
			nic->duplex[vf] = link.duplex;
			nic->speed[vf] = link.speed;

			/* Send a mbox message to VF with current link status */
			mbx.link_status.link_up = link.link_up;
			mbx.link_status.duplex = link.duplex;
			mbx.link_status.speed = link.speed;
			FUNC4(nic, vf, &mbx);
		}
	}
	FUNC3(&nic->check_link, hz * 2, nic_poll_for_link, nic);
}