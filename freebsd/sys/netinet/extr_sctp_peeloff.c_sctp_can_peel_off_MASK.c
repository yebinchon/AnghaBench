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
typedef  scalar_t__ uint32_t ;
struct socket {scalar_t__ so_pcb; } ;
struct sctp_tcb {int dummy; } ;
struct sctp_inpcb {int sctp_flags; } ;
typedef  int /*<<< orphan*/  sctp_assoc_t ;

/* Variables and functions */
 int EBADF ; 
 int EFAULT ; 
 int ENOENT ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  SCTP_FROM_SCTP_PEELOFF ; 
 scalar_t__ FUNC0 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_inpcb*,struct sctp_tcb*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int SCTP_PCB_FLAGS_IN_TCPPOOL ; 
 int SCTP_PCB_FLAGS_TCPTYPE ; 
 scalar_t__ SCTP_STATE_EMPTY ; 
 scalar_t__ SCTP_STATE_INUSE ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_tcb*) ; 
 struct sctp_tcb* FUNC3 (struct sctp_inpcb*,int /*<<< orphan*/ ,int) ; 

int
FUNC4(struct socket *head, sctp_assoc_t assoc_id)
{
	struct sctp_inpcb *inp;
	struct sctp_tcb *stcb;
	uint32_t state;

	if (head == NULL) {
		FUNC1(NULL, NULL, NULL, SCTP_FROM_SCTP_PEELOFF, EBADF);
		return (EBADF);
	}
	inp = (struct sctp_inpcb *)head->so_pcb;
	if (inp == NULL) {
		FUNC1(NULL, NULL, NULL, SCTP_FROM_SCTP_PEELOFF, EFAULT);
		return (EFAULT);
	}
	if ((inp->sctp_flags & SCTP_PCB_FLAGS_TCPTYPE) ||
	    (inp->sctp_flags & SCTP_PCB_FLAGS_IN_TCPPOOL)) {
		FUNC1(inp, NULL, NULL, SCTP_FROM_SCTP_PEELOFF, EOPNOTSUPP);
		return (EOPNOTSUPP);
	}
	stcb = FUNC3(inp, assoc_id, 1);
	if (stcb == NULL) {
		FUNC1(inp, stcb, NULL, SCTP_FROM_SCTP_PEELOFF, ENOENT);
		return (ENOENT);
	}
	state = FUNC0(stcb);
	if ((state == SCTP_STATE_EMPTY) ||
	    (state == SCTP_STATE_INUSE)) {
		FUNC2(stcb);
		FUNC1(inp, stcb, NULL, SCTP_FROM_SCTP_PEELOFF, ENOTCONN);
		return (ENOTCONN);
	}
	FUNC2(stcb);
	/* We are clear to peel this one off */
	return (0);
}