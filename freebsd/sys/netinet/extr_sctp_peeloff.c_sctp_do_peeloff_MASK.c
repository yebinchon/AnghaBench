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
typedef  scalar_t__ uint32_t ;
struct socket {scalar_t__ so_pcb; } ;
struct TYPE_4__ {int /*<<< orphan*/  refcnt; } ;
struct sctp_tcb {TYPE_2__ asoc; } ;
struct TYPE_3__ {int /*<<< orphan*/  shared_keys; scalar_t__ local_auth_chunks; scalar_t__ local_hmacs; } ;
struct sctp_inpcb {int sctp_flags; TYPE_1__ sctp_ep; int /*<<< orphan*/ * inp_starting_point_for_iterator; int /*<<< orphan*/  local_strreset_support; int /*<<< orphan*/  max_cwnd; int /*<<< orphan*/  sctp_context; int /*<<< orphan*/  partial_delivery_point; int /*<<< orphan*/  pktdrop_supported; int /*<<< orphan*/  nrsack_supported; int /*<<< orphan*/  reconfig_supported; int /*<<< orphan*/  asconf_supported; int /*<<< orphan*/  auth_supported; int /*<<< orphan*/  prsctp_supported; int /*<<< orphan*/  ecn_supported; int /*<<< orphan*/  sctp_cmt_on_off; int /*<<< orphan*/  sctp_frag_point; int /*<<< orphan*/  sctp_mobility_features; int /*<<< orphan*/  sctp_features; struct socket* sctp_socket; } ;
typedef  int /*<<< orphan*/  sctp_assoc_t ;

/* Variables and functions */
 int EFAULT ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  SBL_WAIT ; 
 int /*<<< orphan*/  SCTP_FROM_SCTP_PEELOFF ; 
 scalar_t__ FUNC0 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_inpcb*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int SCTP_PCB_COPY_FLAGS ; 
 int SCTP_PCB_FLAGS_CONNECTED ; 
 int SCTP_PCB_FLAGS_IN_TCPPOOL ; 
 int SCTP_PCB_FLAGS_UDPTYPE ; 
 scalar_t__ SCTP_STATE_EMPTY ; 
 scalar_t__ SCTP_STATE_INUSE ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sctp_tcb* FUNC8 (struct sctp_inpcb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct sctp_inpcb*,struct sctp_inpcb*,struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC12 (struct sctp_inpcb*,struct sctp_inpcb*,struct sctp_tcb*,int /*<<< orphan*/ ) ; 

int
FUNC13(struct socket *head, struct socket *so, sctp_assoc_t assoc_id)
{
	struct sctp_inpcb *inp, *n_inp;
	struct sctp_tcb *stcb;
	uint32_t state;

	inp = (struct sctp_inpcb *)head->so_pcb;
	if (inp == NULL) {
		FUNC1(inp, NULL, NULL, SCTP_FROM_SCTP_PEELOFF, EFAULT);
		return (EFAULT);
	}
	stcb = FUNC8(inp, assoc_id, 1);
	if (stcb == NULL) {
		FUNC1(inp, NULL, NULL, SCTP_FROM_SCTP_PEELOFF, ENOTCONN);
		return (ENOTCONN);
	}

	state = FUNC0(stcb);
	if ((state == SCTP_STATE_EMPTY) ||
	    (state == SCTP_STATE_INUSE)) {
		FUNC2(stcb);
		FUNC1(inp, NULL, NULL, SCTP_FROM_SCTP_PEELOFF, ENOTCONN);
		return (ENOTCONN);
	}

	n_inp = (struct sctp_inpcb *)so->so_pcb;
	n_inp->sctp_flags = (SCTP_PCB_FLAGS_UDPTYPE |
	    SCTP_PCB_FLAGS_CONNECTED |
	    SCTP_PCB_FLAGS_IN_TCPPOOL |	/* Turn on Blocking IO */
	    (SCTP_PCB_COPY_FLAGS & inp->sctp_flags));
	n_inp->sctp_socket = so;
	n_inp->sctp_features = inp->sctp_features;
	n_inp->sctp_mobility_features = inp->sctp_mobility_features;
	n_inp->sctp_frag_point = inp->sctp_frag_point;
	n_inp->sctp_cmt_on_off = inp->sctp_cmt_on_off;
	n_inp->ecn_supported = inp->ecn_supported;
	n_inp->prsctp_supported = inp->prsctp_supported;
	n_inp->auth_supported = inp->auth_supported;
	n_inp->asconf_supported = inp->asconf_supported;
	n_inp->reconfig_supported = inp->reconfig_supported;
	n_inp->nrsack_supported = inp->nrsack_supported;
	n_inp->pktdrop_supported = inp->pktdrop_supported;
	n_inp->partial_delivery_point = inp->partial_delivery_point;
	n_inp->sctp_context = inp->sctp_context;
	n_inp->max_cwnd = inp->max_cwnd;
	n_inp->local_strreset_support = inp->local_strreset_support;
	n_inp->inp_starting_point_for_iterator = NULL;
	/* copy in the authentication parameters from the original endpoint */
	if (n_inp->sctp_ep.local_hmacs)
		FUNC10(n_inp->sctp_ep.local_hmacs);
	n_inp->sctp_ep.local_hmacs =
	    FUNC6(inp->sctp_ep.local_hmacs);
	if (n_inp->sctp_ep.local_auth_chunks)
		FUNC9(n_inp->sctp_ep.local_auth_chunks);
	n_inp->sctp_ep.local_auth_chunks =
	    FUNC5(inp->sctp_ep.local_auth_chunks);
	(void)FUNC7(&inp->sctp_ep.shared_keys,
	    &n_inp->sctp_ep.shared_keys);
	/*
	 * Now we must move it from one hash table to another and get the
	 * stcb in the right place.
	 */
	FUNC11(inp, n_inp, stcb);
	FUNC3(&stcb->asoc.refcnt, 1);
	FUNC2(stcb);

	FUNC12(inp, n_inp, stcb, SBL_WAIT);
	FUNC4(&stcb->asoc.refcnt, 1);

	return (0);
}