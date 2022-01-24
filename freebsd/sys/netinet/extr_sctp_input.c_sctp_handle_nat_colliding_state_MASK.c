#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct sctpasochead {int dummy; } ;
struct TYPE_4__ {void* my_vtag; int /*<<< orphan*/  refcnt; } ;
struct sctp_tcb {TYPE_2__* sctp_ep; TYPE_1__ asoc; int /*<<< orphan*/  rport; } ;
struct TYPE_5__ {int /*<<< orphan*/  sctp_lport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctpasochead*,struct sctp_tcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_tcb*,int /*<<< orphan*/ ) ; 
 struct sctpasochead* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 size_t FUNC6 (void*,struct sctpasochead*) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_tcb*,scalar_t__) ; 
 int /*<<< orphan*/  SCTP_SO_NOT_LOCKED ; 
 scalar_t__ SCTP_STATE_COOKIE_ECHOED ; 
 scalar_t__ SCTP_STATE_COOKIE_WAIT ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  hashasocmark ; 
 int /*<<< orphan*/  sctp_asochash ; 
 int /*<<< orphan*/  sctp_asocs ; 
 void* FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,struct sctp_tcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC15 (struct sctp_tcb*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC16(struct sctp_tcb *stcb)
{
	/*
	 * Return 0 means we want you to proceed with the abort non-zero
	 * means no abort processing.
	 */
	uint32_t new_vtag;
	struct sctpasochead *head;

	if ((FUNC3(stcb) == SCTP_STATE_COOKIE_WAIT) ||
	    (FUNC3(stcb) == SCTP_STATE_COOKIE_ECHOED)) {
		new_vtag = FUNC12(stcb->sctp_ep, stcb->sctp_ep->sctp_lport, stcb->rport, 1);
		FUNC10(&stcb->asoc.refcnt, 1);
		FUNC9(stcb);
		FUNC4();
		FUNC8(stcb);
		FUNC11(&stcb->asoc.refcnt, 1);
	} else {
		return (0);
	}
	if (FUNC3(stcb) == SCTP_STATE_COOKIE_WAIT) {
		/* generate a new vtag and send init */
		FUNC1(stcb, sctp_asocs);
		stcb->asoc.my_vtag = new_vtag;
		head = &FUNC2(sctp_asochash)[FUNC6(stcb->asoc.my_vtag, FUNC2(hashasocmark))];
		/*
		 * put it in the bucket in the vtag hash of assoc's for the
		 * system
		 */
		FUNC0(head, stcb, sctp_asocs);
		FUNC5();
		FUNC13(stcb->sctp_ep, stcb, SCTP_SO_NOT_LOCKED);
		return (1);
	} else {
		/*
		 * treat like a case where the cookie expired i.e.: - dump
		 * current cookie. - generate a new vtag. - resend init.
		 */
		/* generate a new vtag and send init */
		FUNC1(stcb, sctp_asocs);
		FUNC7(stcb, SCTP_STATE_COOKIE_WAIT);
		FUNC14(stcb);
		FUNC15(stcb, &stcb->asoc);
		stcb->asoc.my_vtag = new_vtag;
		head = &FUNC2(sctp_asochash)[FUNC6(stcb->asoc.my_vtag, FUNC2(hashasocmark))];
		/*
		 * put it in the bucket in the vtag hash of assoc's for the
		 * system
		 */
		FUNC0(head, stcb, sctp_asocs);
		FUNC5();
		FUNC13(stcb->sctp_ep, stcb, SCTP_SO_NOT_LOCKED);
		return (1);
	}
	return (0);
}