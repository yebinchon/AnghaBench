#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_8__ {int /*<<< orphan*/  tsn; } ;
struct TYPE_9__ {TYPE_3__ data; } ;
struct sctp_tmit_chunk {scalar_t__ sent; TYPE_4__ rec; TYPE_5__* whoTo; int /*<<< orphan*/  book_size; int /*<<< orphan*/ * data; scalar_t__ window_probe; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* sctp_cwnd_update_tsn_acknowledged ) (TYPE_5__*,struct sctp_tmit_chunk*) ;} ;
struct TYPE_7__ {TYPE_1__ cc_functions; } ;
struct sctp_tcb {TYPE_2__ asoc; } ;
struct sctp_association {int /*<<< orphan*/  sent_queue_retran_cnt; } ;
struct TYPE_10__ {int /*<<< orphan*/  flight_size; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCTP_DATAGRAM_ACKED ; 
 scalar_t__ SCTP_DATAGRAM_RESEND ; 
 int SCTP_FLIGHT_LOGGING_ENABLE ; 
 int /*<<< orphan*/  SCTP_FLIGHT_LOG_DOWN_WP ; 
 int /*<<< orphan*/  SCTP_FLIGHT_LOG_DWN_WP_FWD ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_tmit_chunk*) ; 
 int /*<<< orphan*/  sctp_logging_level ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_tcb*,struct sctp_tmit_chunk*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,struct sctp_tmit_chunk*) ; 

__attribute__((used)) static void
FUNC6(struct sctp_tcb *stcb,
    struct sctp_association *asoc,
    struct sctp_tmit_chunk *tp1)
{
	tp1->window_probe = 0;
	if ((tp1->sent >= SCTP_DATAGRAM_ACKED) || (tp1->data == NULL)) {
		/* TSN's skipped we do NOT move back. */
		FUNC2(SCTP_FLIGHT_LOG_DWN_WP_FWD,
		    tp1->whoTo ? tp1->whoTo->flight_size : 0,
		    tp1->book_size,
		    (uint32_t)(uintptr_t)tp1->whoTo,
		    tp1->rec.data.tsn);
		return;
	}
	/* First setup this by shrinking flight */
	if (stcb->asoc.cc_functions.sctp_cwnd_update_tsn_acknowledged) {
		(*stcb->asoc.cc_functions.sctp_cwnd_update_tsn_acknowledged) (tp1->whoTo,
		    tp1);
	}
	FUNC1(tp1);
	FUNC3(stcb, tp1);
	/* Now mark for resend */
	tp1->sent = SCTP_DATAGRAM_RESEND;
	FUNC4(asoc->sent_queue_retran_cnt);

	if (FUNC0(sctp_logging_level) & SCTP_FLIGHT_LOGGING_ENABLE) {
		FUNC2(SCTP_FLIGHT_LOG_DOWN_WP,
		    tp1->whoTo->flight_size,
		    tp1->book_size,
		    (uint32_t)(uintptr_t)tp1->whoTo,
		    tp1->rec.data.tsn);
	}
}