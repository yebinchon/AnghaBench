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
struct bstp_state {int dummy; } ;
struct TYPE_2__ {int pv_root_id; int pv_dbridge_id; int /*<<< orphan*/  pv_cost; } ;
struct bstp_port {int bp_port_id; int bp_desg_msg_age; int bp_desg_max_age; int bp_desg_htime; int bp_desg_fdelay; int bp_protover; TYPE_1__ bp_desg_pv; } ;
struct bstp_cbpdu {int /*<<< orphan*/  cbu_bpdutype; int /*<<< orphan*/  cbu_flags; void* cbu_forwarddelay; void* cbu_hellotime; void* cbu_maxage; void* cbu_messageage; void* cbu_portid; int /*<<< orphan*/  cbu_bridgeaddr; void* cbu_bridgepri; int /*<<< orphan*/  cbu_rootpathcost; int /*<<< orphan*/  cbu_rootaddr; void* cbu_rootpri; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bstp_state*) ; 
 int /*<<< orphan*/  BSTP_MSGTYPE_CFG ; 
 int /*<<< orphan*/  BSTP_MSGTYPE_RSTP ; 
#define  BSTP_PROTO_RSTP 129 
#define  BSTP_PROTO_STP 128 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bstp_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct bstp_state*,struct bstp_port*,struct bstp_cbpdu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct bstp_state *bs, struct bstp_port *bp)
{
	struct bstp_cbpdu bpdu;

	FUNC0(bs);

	bpdu.cbu_rootpri = FUNC5(bp->bp_desg_pv.pv_root_id >> 48);
	FUNC1(bp->bp_desg_pv.pv_root_id, bpdu.cbu_rootaddr);

	bpdu.cbu_rootpathcost = FUNC4(bp->bp_desg_pv.pv_cost);

	bpdu.cbu_bridgepri = FUNC5(bp->bp_desg_pv.pv_dbridge_id >> 48);
	FUNC1(bp->bp_desg_pv.pv_dbridge_id, bpdu.cbu_bridgeaddr);

	bpdu.cbu_portid = FUNC5(bp->bp_port_id);
	bpdu.cbu_messageage = FUNC5(bp->bp_desg_msg_age);
	bpdu.cbu_maxage = FUNC5(bp->bp_desg_max_age);
	bpdu.cbu_hellotime = FUNC5(bp->bp_desg_htime);
	bpdu.cbu_forwarddelay = FUNC5(bp->bp_desg_fdelay);

	bpdu.cbu_flags = FUNC2(bp);

	switch (bp->bp_protover) {
		case BSTP_PROTO_STP:
			bpdu.cbu_bpdutype = BSTP_MSGTYPE_CFG;
			break;

		case BSTP_PROTO_RSTP:
			bpdu.cbu_bpdutype = BSTP_MSGTYPE_RSTP;
			break;
	}

	FUNC3(bs, bp, &bpdu);
}