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
struct sctp_association {struct sctp_nets* alternate; struct sctp_nets* last_control_chunk_from; int /*<<< orphan*/  nets; struct sctp_nets* last_data_chunk_from; struct sctp_nets* primary_destination; struct sctp_nets* deleted_primary; int /*<<< orphan*/  numnets; } ;
struct sctp_tcb {struct sctp_association asoc; int /*<<< orphan*/  sctp_ep; } ;
struct sctp_nets {int /*<<< orphan*/  lastsv; int /*<<< orphan*/  lastsa; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SCTP_DEBUG_ASCONF1 ; 
 int /*<<< orphan*/  SCTP_MOBILITY_BASE ; 
 int /*<<< orphan*/  SCTP_MOBILITY_FASTHANDOFF ; 
 int /*<<< orphan*/  SCTP_MOBILITY_PRIM_DELETED ; 
 int /*<<< orphan*/  SCTP_TIMER_TYPE_PRIM_DELETED ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sctp_nets*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct sctp_nets* FUNC5 (struct sctp_tcb*,struct sctp_nets*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_nets*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sctp_next ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sctp_tcb*,int /*<<< orphan*/ *) ; 

void
FUNC10(struct sctp_tcb *stcb, struct sctp_nets *net)
{
	struct sctp_association *asoc;

	asoc = &stcb->asoc;
	asoc->numnets--;
	FUNC2(&asoc->nets, net, sctp_next);
	if (net == asoc->primary_destination) {
		/* Reset primary */
		struct sctp_nets *lnet;

		lnet = FUNC1(&asoc->nets);
		/*
		 * Mobility adaptation Ideally, if deleted destination is
		 * the primary, it becomes a fast retransmission trigger by
		 * the subsequent SET PRIMARY. (by micchie)
		 */
		if (FUNC7(stcb->sctp_ep,
		    SCTP_MOBILITY_BASE) ||
		    FUNC7(stcb->sctp_ep,
		    SCTP_MOBILITY_FASTHANDOFF)) {
			FUNC0(SCTP_DEBUG_ASCONF1, "remove_net: primary dst is deleting\n");
			if (asoc->deleted_primary != NULL) {
				FUNC0(SCTP_DEBUG_ASCONF1, "remove_net: deleted primary may be already stored\n");
				goto out;
			}
			asoc->deleted_primary = net;
			FUNC3(&net->ref_count, 1);
			FUNC4(&net->lastsa, 0, sizeof(net->lastsa));
			FUNC4(&net->lastsv, 0, sizeof(net->lastsv));
			FUNC8(stcb->sctp_ep,
			    SCTP_MOBILITY_PRIM_DELETED);
			FUNC9(SCTP_TIMER_TYPE_PRIM_DELETED,
			    stcb->sctp_ep, stcb, NULL);
		}
out:
		/* Try to find a confirmed primary */
		asoc->primary_destination = FUNC5(stcb, lnet, 0);
	}
	if (net == asoc->last_data_chunk_from) {
		/* Reset primary */
		asoc->last_data_chunk_from = FUNC1(&asoc->nets);
	}
	if (net == asoc->last_control_chunk_from) {
		/* Clear net */
		asoc->last_control_chunk_from = NULL;
	}
	if (net == stcb->asoc.alternate) {
		FUNC6(stcb->asoc.alternate);
		stcb->asoc.alternate = NULL;
	}
	FUNC6(net);
}