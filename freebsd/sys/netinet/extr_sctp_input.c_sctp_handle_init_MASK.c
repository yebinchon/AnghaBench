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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct sockaddr {int dummy; } ;
struct sctphdr {int dummy; } ;
struct sctp_tcb {int dummy; } ;
struct sctp_nets {int dummy; } ;
struct sctp_inpcb {int sctp_flags; int /*<<< orphan*/  fibnum; } ;
struct TYPE_2__ {int /*<<< orphan*/  chunk_length; } ;
struct sctp_init {scalar_t__ initiate_tag; scalar_t__ num_inbound_streams; scalar_t__ num_outbound_streams; int /*<<< orphan*/  a_rwnd; } ;
struct sctp_init_chunk {TYPE_1__ ch; struct sctp_init init; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCTP_CAUSE_INVALID_PARAM ; 
 int /*<<< orphan*/  SCTP_DEBUG_INPUT2 ; 
 int /*<<< orphan*/  SCTP_DEBUG_INPUT3 ; 
 scalar_t__ FUNC2 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_inpcb*) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_inpcb*) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_inpcb*) ; 
 scalar_t__ SCTP_MIN_RWND ; 
 int /*<<< orphan*/  SCTP_OUTPUT_FROM_CONTROL_PROC ; 
 int SCTP_PCB_FLAGS_SOCKET_ALLGONE ; 
 int SCTP_PCB_FLAGS_SOCKET_GONE ; 
 int /*<<< orphan*/  SCTP_SO_NOT_LOCKED ; 
 scalar_t__ SCTP_STATE_SHUTDOWN_ACK_SENT ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_inpcb*,struct sctp_tcb*,struct mbuf*,int,struct sockaddr*,struct sockaddr*,struct sctphdr*,struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sctp_blackhole ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_inpcb*,struct sctp_tcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sctp_diag_info_code ; 
 struct mbuf* FUNC10 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct mbuf*,int,struct sockaddr*,struct sockaddr*,struct sctphdr*,int /*<<< orphan*/ ,struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*,struct mbuf*,int,int,struct sockaddr*,struct sockaddr*,struct sctphdr*,struct sctp_init_chunk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sctp_tcb*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct mbuf*,int,int) ; 

__attribute__((used)) static void
FUNC15(struct mbuf *m, int iphlen, int offset,
    struct sockaddr *src, struct sockaddr *dst, struct sctphdr *sh,
    struct sctp_init_chunk *cp, struct sctp_inpcb *inp,
    struct sctp_tcb *stcb, struct sctp_nets *net, int *abort_no_unlock,
    uint8_t mflowtype, uint32_t mflowid,
    uint32_t vrf_id, uint16_t port)
{
	struct sctp_init *init;
	struct mbuf *op_err;

	FUNC0(SCTP_DEBUG_INPUT2, "sctp_handle_init: handling INIT tcb:%p\n",
	    (void *)stcb);
	if (stcb == NULL) {
		FUNC3(inp);
	}
	/* validate length */
	if (FUNC7(cp->ch.chunk_length) < sizeof(struct sctp_init_chunk)) {
		op_err = FUNC10(SCTP_CAUSE_INVALID_PARAM, "");
		FUNC8(inp, stcb, m, iphlen, src, dst, sh, op_err,
		    mflowtype, mflowid,
		    vrf_id, port);
		if (stcb)
			*abort_no_unlock = 1;
		goto outnow;
	}
	/* validate parameters */
	init = &cp->init;
	if (init->initiate_tag == 0) {
		/* protocol error... send abort */
		op_err = FUNC10(SCTP_CAUSE_INVALID_PARAM, "");
		FUNC8(inp, stcb, m, iphlen, src, dst, sh, op_err,
		    mflowtype, mflowid,
		    vrf_id, port);
		if (stcb)
			*abort_no_unlock = 1;
		goto outnow;
	}
	if (FUNC6(init->a_rwnd) < SCTP_MIN_RWND) {
		/* invalid parameter... send abort */
		op_err = FUNC10(SCTP_CAUSE_INVALID_PARAM, "");
		FUNC8(inp, stcb, m, iphlen, src, dst, sh, op_err,
		    mflowtype, mflowid,
		    vrf_id, port);
		if (stcb)
			*abort_no_unlock = 1;
		goto outnow;
	}
	if (init->num_inbound_streams == 0) {
		/* protocol error... send abort */
		op_err = FUNC10(SCTP_CAUSE_INVALID_PARAM, "");
		FUNC8(inp, stcb, m, iphlen, src, dst, sh, op_err,
		    mflowtype, mflowid,
		    vrf_id, port);
		if (stcb)
			*abort_no_unlock = 1;
		goto outnow;
	}
	if (init->num_outbound_streams == 0) {
		/* protocol error... send abort */
		op_err = FUNC10(SCTP_CAUSE_INVALID_PARAM, "");
		FUNC8(inp, stcb, m, iphlen, src, dst, sh, op_err,
		    mflowtype, mflowid,
		    vrf_id, port);
		if (stcb)
			*abort_no_unlock = 1;
		goto outnow;
	}
	if (FUNC14(m, offset + sizeof(*cp),
	    offset + FUNC7(cp->ch.chunk_length))) {
		/* auth parameter(s) error... send abort */
		op_err = FUNC10(FUNC1(sctp_diag_info_code),
		    "Problem with AUTH parameters");
		FUNC8(inp, stcb, m, iphlen, src, dst, sh, op_err,
		    mflowtype, mflowid,
		    vrf_id, port);
		if (stcb)
			*abort_no_unlock = 1;
		goto outnow;
	}
	/* We are only accepting if we have a listening socket. */
	if ((stcb == NULL) &&
	    ((inp->sctp_flags & SCTP_PCB_FLAGS_SOCKET_GONE) ||
	    (inp->sctp_flags & SCTP_PCB_FLAGS_SOCKET_ALLGONE) ||
	    (!FUNC5(inp)))) {
		/*
		 * FIX ME ?? What about TCP model and we have a
		 * match/restart case? Actually no fix is needed. the lookup
		 * will always find the existing assoc so stcb would not be
		 * NULL. It may be questionable to do this since we COULD
		 * just send back the INIT-ACK and hope that the app did
		 * accept()'s by the time the COOKIE was sent. But there is
		 * a price to pay for COOKIE generation and I don't want to
		 * pay it on the chance that the app will actually do some
		 * accepts(). The App just looses and should NOT be in this
		 * state :-)
		 */
		if (FUNC1(sctp_blackhole) == 0) {
			op_err = FUNC10(FUNC1(sctp_diag_info_code),
			    "No listener");
			FUNC11(m, iphlen, src, dst, sh, 0, op_err,
			    mflowtype, mflowid, inp->fibnum,
			    vrf_id, port);
		}
		goto outnow;
	}
	if ((stcb != NULL) &&
	    (FUNC2(stcb) == SCTP_STATE_SHUTDOWN_ACK_SENT)) {
		FUNC0(SCTP_DEBUG_INPUT3, "sctp_handle_init: sending SHUTDOWN-ACK\n");
		FUNC13(stcb, NULL);
		FUNC9(inp, stcb, SCTP_OUTPUT_FROM_CONTROL_PROC, SCTP_SO_NOT_LOCKED);
	} else {
		FUNC0(SCTP_DEBUG_INPUT3, "sctp_handle_init: sending INIT-ACK\n");
		FUNC12(inp, stcb, net, m, iphlen, offset,
		    src, dst, sh, cp,
		    mflowtype, mflowid,
		    vrf_id, port);
	}
outnow:
	if (stcb == NULL) {
		FUNC4(inp);
	}
}