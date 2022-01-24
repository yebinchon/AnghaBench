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
typedef  int uint8_t ;
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct sctp_tcb {int /*<<< orphan*/  rport; } ;
struct sctp_queued_to_read {int sinfo_flags; int top_fsn; int fsn_included; int /*<<< orphan*/  port_from; struct sctp_tcb* stcb; struct mbuf* data; struct sctp_nets* whoFrom; int /*<<< orphan*/  reasm; void* mid; int /*<<< orphan*/  sinfo_assoc_id; void* sinfo_cumtsn; void* sinfo_tsn; void* sinfo_context; void* sinfo_ppid; int /*<<< orphan*/  sinfo_stream; } ;
struct sctp_nets {int /*<<< orphan*/  ref_count; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_queued_to_read*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_tcb*,struct sctp_queued_to_read*) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_tcb*) ; 

struct sctp_queued_to_read *
FUNC5(struct sctp_tcb *stcb,
    struct sctp_nets *net,
    uint32_t tsn, uint32_t ppid,
    uint32_t context, uint16_t sid,
    uint32_t mid, uint8_t flags,
    struct mbuf *dm)
{
	struct sctp_queued_to_read *read_queue_e = NULL;

	FUNC3(stcb, read_queue_e);
	if (read_queue_e == NULL) {
		goto failed_build;
	}
	FUNC2(read_queue_e, 0, sizeof(struct sctp_queued_to_read));
	read_queue_e->sinfo_stream = sid;
	read_queue_e->sinfo_flags = (flags << 8);
	read_queue_e->sinfo_ppid = ppid;
	read_queue_e->sinfo_context = context;
	read_queue_e->sinfo_tsn = tsn;
	read_queue_e->sinfo_cumtsn = tsn;
	read_queue_e->sinfo_assoc_id = FUNC4(stcb);
	read_queue_e->mid = mid;
	read_queue_e->top_fsn = read_queue_e->fsn_included = 0xffffffff;
	FUNC0(&read_queue_e->reasm);
	read_queue_e->whoFrom = net;
	FUNC1(&net->ref_count, 1);
	read_queue_e->data = dm;
	read_queue_e->stcb = stcb;
	read_queue_e->port_from = stcb->rport;
failed_build:
	return (read_queue_e);
}