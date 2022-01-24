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
struct bstp_state {int /*<<< orphan*/  bs_allsynced; } ;
struct bstp_port {int bp_infois; int bp_agreed; int bp_proposed; int bp_rcvdtc; int bp_rcvdtca; int /*<<< orphan*/  bp_proposing; int /*<<< orphan*/  bp_ptp_link; int /*<<< orphan*/  bp_port_htime; int /*<<< orphan*/  bp_port_fdelay; int /*<<< orphan*/  bp_port_max_age; int /*<<< orphan*/  bp_port_msg_age; int /*<<< orphan*/  bp_port_pv; int /*<<< orphan*/  bp_agree; } ;
struct bstp_config_unit {int /*<<< orphan*/  cu_topology_change_ack; int /*<<< orphan*/  cu_topology_change; int /*<<< orphan*/  cu_agree; int /*<<< orphan*/  cu_learning; int /*<<< orphan*/  cu_forwarding; int /*<<< orphan*/  cu_proposal; int /*<<< orphan*/  cu_hello_time; int /*<<< orphan*/  cu_forward_delay; int /*<<< orphan*/  cu_max_age; int /*<<< orphan*/  cu_message_age; int /*<<< orphan*/  cu_pv; } ;

/* Variables and functions */
#define  BSTP_INFO_AGED 134 
#define  BSTP_INFO_DISABLED 133 
 int BSTP_INFO_RECEIVED ; 
 int /*<<< orphan*/  FUNC0 (struct bstp_state*) ; 
 int /*<<< orphan*/  BSTP_MIN_HELLO_TIME ; 
#define  BSTP_PDU_INFERIOR 132 
#define  BSTP_PDU_INFERIORALT 131 
#define  BSTP_PDU_OTHER 130 
#define  BSTP_PDU_REPEATED 129 
#define  BSTP_PDU_SUPERIOR 128 
 int /*<<< orphan*/  FUNC1 (struct bstp_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct bstp_port*,int) ; 
 int FUNC3 (struct bstp_port*,struct bstp_config_unit*) ; 
 int /*<<< orphan*/  FUNC4 (struct bstp_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct bstp_state*,struct bstp_port*) ; 

__attribute__((used)) static void
FUNC6(struct bstp_state *bs, struct bstp_port *bp,
    struct bstp_config_unit *cu)
{
	int type;

	FUNC0(bs);

	/* We need to have transitioned to INFO_MINE before proceeding */
	switch (bp->bp_infois) {
		case BSTP_INFO_DISABLED:
		case BSTP_INFO_AGED:
			return;
	}

	type = FUNC3(bp, cu);

	switch (type) {
		case BSTP_PDU_SUPERIOR:
			bs->bs_allsynced = 0;
			bp->bp_agreed = 0;
			bp->bp_proposing = 0;

			if (cu->cu_proposal && cu->cu_forwarding == 0)
				bp->bp_proposed = 1;
			if (cu->cu_topology_change)
				bp->bp_rcvdtc = 1;
			if (cu->cu_topology_change_ack)
				bp->bp_rcvdtca = 1;

			if (bp->bp_agree &&
			    !FUNC2(bp, BSTP_INFO_RECEIVED))
				bp->bp_agree = 0;

			/* copy the received priority and timers to the port */
			bp->bp_port_pv = cu->cu_pv;
			bp->bp_port_msg_age = cu->cu_message_age;
			bp->bp_port_max_age = cu->cu_max_age;
			bp->bp_port_fdelay = cu->cu_forward_delay;
			bp->bp_port_htime =
				(cu->cu_hello_time > BSTP_MIN_HELLO_TIME ?
				 cu->cu_hello_time : BSTP_MIN_HELLO_TIME);

			/* set expiry for the new info */
			FUNC4(bp);

			bp->bp_infois = BSTP_INFO_RECEIVED;
			FUNC1(bs);
			break;

		case BSTP_PDU_REPEATED:
			if (cu->cu_proposal && cu->cu_forwarding == 0)
				bp->bp_proposed = 1;
			if (cu->cu_topology_change)
				bp->bp_rcvdtc = 1;
			if (cu->cu_topology_change_ack)
				bp->bp_rcvdtca = 1;

			/* rearm the age timer */
			FUNC4(bp);
			break;

		case BSTP_PDU_INFERIOR:
			if (cu->cu_learning) {
				bp->bp_agreed = 1;
				bp->bp_proposing = 0;
			}
			break;

		case BSTP_PDU_INFERIORALT:
			/*
			 * only point to point links are allowed fast
			 * transitions to forwarding.
			 */
			if (cu->cu_agree && bp->bp_ptp_link) {
				bp->bp_agreed = 1;
				bp->bp_proposing = 0;
			} else
				bp->bp_agreed = 0;

			if (cu->cu_topology_change)
				bp->bp_rcvdtc = 1;
			if (cu->cu_topology_change_ack)
				bp->bp_rcvdtca = 1;
			break;

		case BSTP_PDU_OTHER:
			return;	/* do nothing */
	}
	/* update the state machines with the new data */
	FUNC5(bs, bp);
}