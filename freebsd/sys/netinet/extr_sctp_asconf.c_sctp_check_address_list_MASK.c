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
typedef  int /*<<< orphan*/  uint16_t ;
struct sockaddr {int dummy; } ;
struct sctp_tcb {TYPE_1__* sctp_ep; } ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {int sctp_flags; } ;

/* Variables and functions */
 int SCTP_PCB_FLAGS_BOUNDALL ; 
 int /*<<< orphan*/  SCTP_PCB_FLAGS_DO_ASCONF ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_tcb*,struct mbuf*,int,int,struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_tcb*,struct mbuf*,int,int,struct sockaddr*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_tcb*,struct mbuf*,int,int) ; 

void
FUNC4(struct sctp_tcb *stcb, struct mbuf *m, int offset,
    int length, struct sockaddr *init_addr,
    uint16_t local_scope, uint16_t site_scope,
    uint16_t ipv4_scope, uint16_t loopback_scope)
{
	/* process the local addresses in the initack */
	FUNC3(stcb, m, offset, length);

	if (stcb->sctp_ep->sctp_flags & SCTP_PCB_FLAGS_BOUNDALL) {
		/* bound all case */
		FUNC0(stcb, m, offset, length, init_addr,
		    local_scope, site_scope, ipv4_scope, loopback_scope);
	} else {
		/* subset bound case */
		if (FUNC2(stcb->sctp_ep,
		    SCTP_PCB_FLAGS_DO_ASCONF)) {
			/* asconf's allowed */
			FUNC1(stcb, m, offset, length,
			    init_addr);
		}
		/* else, no asconfs allowed, so what we sent is what we get */
	}
}