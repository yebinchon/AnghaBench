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
typedef  int uint32_t ;
struct TYPE_3__ {scalar_t__ sb_cc; int my_rwnd_control_len; } ;
struct sctp_tcb {TYPE_1__ asoc; TYPE_2__* sctp_socket; } ;
struct sctp_association {int cnt_on_reasm_queue; scalar_t__ size_on_reasm_queue; int cnt_on_all_streams; scalar_t__ size_on_all_streams; } ;
struct TYPE_4__ {int /*<<< orphan*/  so_rcv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MSIZE ; 
 int /*<<< orphan*/  SCTP_MINIMAL_RWND ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int) ; 

uint32_t
FUNC5(struct sctp_tcb *stcb, struct sctp_association *asoc)
{
	uint32_t calc = 0;

	/*
	 * This is really set wrong with respect to a 1-2-m socket. Since
	 * the sb_cc is the count that everyone as put up. When we re-write
	 * sctp_soreceive then we will fix this so that ONLY this
	 * associations data is taken into account.
	 */
	if (stcb->sctp_socket == NULL) {
		return (calc);
	}

	FUNC0(asoc->cnt_on_reasm_queue > 0 || asoc->size_on_reasm_queue == 0,
	    ("size_on_reasm_queue is %u", asoc->size_on_reasm_queue));
	FUNC0(asoc->cnt_on_all_streams > 0 || asoc->size_on_all_streams == 0,
	    ("size_on_all_streams is %u", asoc->size_on_all_streams));
	if (stcb->asoc.sb_cc == 0 &&
	    asoc->cnt_on_reasm_queue == 0 &&
	    asoc->cnt_on_all_streams == 0) {
		/* Full rwnd granted */
		calc = FUNC2(FUNC1(stcb->sctp_socket), SCTP_MINIMAL_RWND);
		return (calc);
	}
	/* get actual space */
	calc = (uint32_t)FUNC3(&stcb->asoc, &stcb->sctp_socket->so_rcv);
	/*
	 * take out what has NOT been put on socket queue and we yet hold
	 * for putting up.
	 */
	calc = FUNC4(calc, (uint32_t)(asoc->size_on_reasm_queue +
	    asoc->cnt_on_reasm_queue * MSIZE));
	calc = FUNC4(calc, (uint32_t)(asoc->size_on_all_streams +
	    asoc->cnt_on_all_streams * MSIZE));
	if (calc == 0) {
		/* out of space */
		return (calc);
	}

	/* what is the overhead of all these rwnd's */
	calc = FUNC4(calc, stcb->asoc.my_rwnd_control_len);
	/*
	 * If the window gets too small due to ctrl-stuff, reduce it to 1,
	 * even it is 0. SWS engaged
	 */
	if (calc < stcb->asoc.my_rwnd_control_len) {
		calc = 1;
	}
	return (calc);
}