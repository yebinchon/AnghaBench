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
typedef  int uint16_t ;
struct TYPE_6__ {int tsn; int sid; int fsn; int mid; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct sctp_tmit_chunk {int /*<<< orphan*/ * data; TYPE_3__ rec; } ;
struct TYPE_5__ {scalar_t__ idata_supported; } ;
struct sctp_tcb {TYPE_4__* sctp_ep; TYPE_1__ asoc; } ;
struct sctp_queued_to_read {int fsn_included; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_8__ {scalar_t__ last_abort_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_CAUSE_PROTOCOL_VIOLATION ; 
 int SCTP_DIAG_INFO_LEN ; 
 scalar_t__ SCTP_FROM_SCTP_INDATA ; 
 scalar_t__ SCTP_LOC_1 ; 
 int /*<<< orphan*/  SCTP_SO_NOT_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,struct sctp_tcb*,struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_tcb*,struct sctp_tmit_chunk*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int,int,int,int,int,int) ; 

__attribute__((used)) static void
FUNC5(struct sctp_tcb *stcb,
    struct sctp_queued_to_read *control,
    struct sctp_tmit_chunk *chk,
    int *abort_flag, int opspot)
{
	char msg[SCTP_DIAG_INFO_LEN];
	struct mbuf *oper;

	if (stcb->asoc.idata_supported) {
		FUNC4(msg, sizeof(msg),
		    "Reass %x,CF:%x,TSN=%8.8x,SID=%4.4x,FSN=%8.8x,MID:%8.8x",
		    opspot,
		    control->fsn_included,
		    chk->rec.data.tsn,
		    chk->rec.data.sid,
		    chk->rec.data.fsn, chk->rec.data.mid);
	} else {
		FUNC4(msg, sizeof(msg),
		    "Reass %x,CI:%x,TSN=%8.8x,SID=%4.4x,FSN=%4.4x,SSN:%4.4x",
		    opspot,
		    control->fsn_included,
		    chk->rec.data.tsn,
		    chk->rec.data.sid,
		    chk->rec.data.fsn,
		    (uint16_t)chk->rec.data.mid);
	}
	oper = FUNC2(SCTP_CAUSE_PROTOCOL_VIOLATION, msg);
	FUNC3(chk->data);
	chk->data = NULL;
	FUNC1(stcb, chk, SCTP_SO_NOT_LOCKED);
	stcb->sctp_ep->last_abort_code = SCTP_FROM_SCTP_INDATA + SCTP_LOC_1;
	FUNC0(stcb->sctp_ep, stcb, oper, SCTP_SO_NOT_LOCKED);
	*abort_flag = 1;
}