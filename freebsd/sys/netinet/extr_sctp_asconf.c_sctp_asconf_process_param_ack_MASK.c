#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct TYPE_8__ {int /*<<< orphan*/  asconf_queue; } ;
struct sctp_tcb {TYPE_4__ asoc; } ;
struct TYPE_5__ {int param_type; } ;
struct TYPE_6__ {TYPE_1__ ph; } ;
struct TYPE_7__ {TYPE_2__ aph; } ;
struct sctp_asconf_addr {scalar_t__ ifa; TYPE_3__ ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
#define  SCTP_ADD_IP_ADDRESS 130 
 int /*<<< orphan*/  SCTP_DEBUG_ASCONF1 ; 
#define  SCTP_DEL_IP_ADDRESS 129 
 int /*<<< orphan*/  FUNC1 (struct sctp_asconf_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_M_ASC_ADDR ; 
#define  SCTP_SET_PRIM_ADDR 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sctp_asconf_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_tcb*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void
FUNC5(struct sctp_tcb *stcb,
    struct sctp_asconf_addr *aparam, uint32_t flag)
{
	uint16_t param_type;

	/* process this param */
	param_type = aparam->ap.aph.ph.param_type;
	switch (param_type) {
	case SCTP_ADD_IP_ADDRESS:
		FUNC0(SCTP_DEBUG_ASCONF1,
		    "process_param_ack: added IP address\n");
		FUNC3(stcb, aparam->ifa, flag);
		break;
	case SCTP_DEL_IP_ADDRESS:
		FUNC0(SCTP_DEBUG_ASCONF1,
		    "process_param_ack: deleted IP address\n");
		/* nothing really to do... lists already updated */
		break;
	case SCTP_SET_PRIM_ADDR:
		FUNC0(SCTP_DEBUG_ASCONF1,
		    "process_param_ack: set primary IP address\n");
		/* nothing to do... peer may start using this addr */
		break;
	default:
		/* should NEVER happen */
		break;
	}

	/* remove the param and free it */
	FUNC2(&stcb->asoc.asconf_queue, aparam, next);
	if (aparam->ifa)
		FUNC4(aparam->ifa);
	FUNC1(aparam, SCTP_M_ASC_ADDR);
}