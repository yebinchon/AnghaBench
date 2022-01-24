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
typedef  int /*<<< orphan*/  uint32_t ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  primary_destination; int /*<<< orphan*/  vrf_id; } ;
struct sctp_tcb {TYPE_1__ asoc; int /*<<< orphan*/  sctp_ep; } ;
struct sctp_ifa {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sockaddr*) ; 
 int /*<<< orphan*/  SCTP_ADDR_NOT_LOCKED ; 
 int /*<<< orphan*/  SCTP_DEBUG_ASCONF1 ; 
 scalar_t__ FUNC2 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  SCTP_SET_PRIM_ADDR ; 
 scalar_t__ SCTP_STATE_OPEN ; 
 scalar_t__ SCTP_STATE_SHUTDOWN_RECEIVED ; 
 int /*<<< orphan*/  SCTP_TIMER_TYPE_ASCONF ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_tcb*,struct sctp_ifa*,int /*<<< orphan*/ ) ; 
 struct sctp_ifa* FUNC4 (struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_tcb*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sctp_tcb*,int /*<<< orphan*/ ) ; 

int32_t
FUNC7(struct sctp_tcb *stcb, struct sockaddr *sa)
{
	uint32_t vrf_id;
	struct sctp_ifa *ifa;

	/* find the ifa for the desired set primary */
	vrf_id = stcb->asoc.vrf_id;
	ifa = FUNC4(sa, vrf_id, SCTP_ADDR_NOT_LOCKED);
	if (ifa == NULL) {
		/* Invalid address */
		return (-1);
	}

	/* queue an ASCONF:SET_PRIM_ADDR to be sent */
	if (!FUNC3(stcb, ifa, SCTP_SET_PRIM_ADDR)) {
		/* set primary queuing succeeded */
		FUNC0(SCTP_DEBUG_ASCONF1,
		    "set_primary_ip_address_sa: queued on tcb=%p, ",
		    (void *)stcb);
		FUNC1(SCTP_DEBUG_ASCONF1, sa);
		if ((FUNC2(stcb) == SCTP_STATE_OPEN) ||
		    (FUNC2(stcb) == SCTP_STATE_SHUTDOWN_RECEIVED)) {
#ifdef SCTP_TIMER_BASED_ASCONF
			sctp_timer_start(SCTP_TIMER_TYPE_ASCONF,
			    stcb->sctp_ep, stcb,
			    stcb->asoc.primary_destination);
#else
			FUNC5(stcb, NULL, SCTP_ADDR_NOT_LOCKED);
#endif
		}
	} else {
		FUNC0(SCTP_DEBUG_ASCONF1, "set_primary_ip_address_sa: failed to add to queue on tcb=%p, ",
		    (void *)stcb);
		FUNC1(SCTP_DEBUG_ASCONF1, sa);
		return (-1);
	}
	return (0);
}