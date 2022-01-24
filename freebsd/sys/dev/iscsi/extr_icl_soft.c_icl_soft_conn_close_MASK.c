#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * sb_upcall; } ;
struct socket {TYPE_1__ so_rcv; TYPE_1__ so_snd; } ;
struct icl_pdu {int dummy; } ;
struct icl_conn {int ic_disconnecting; int /*<<< orphan*/  ic_to_send; struct icl_pdu* ic_receive_pdu; struct socket* ic_socket; int /*<<< orphan*/  ic_lock; int /*<<< orphan*/  ic_send_cv; int /*<<< orphan*/  ic_receive_cv; scalar_t__ ic_send_running; scalar_t__ ic_receive_running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct icl_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct icl_conn*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  SO_RCV ; 
 int /*<<< orphan*/  SO_SND ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct icl_pdu* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct icl_conn*,struct icl_pdu*) ; 
 int /*<<< orphan*/  ip_next ; 
 int /*<<< orphan*/  FUNC11 (struct socket*) ; 
 int /*<<< orphan*/  FUNC12 (struct socket*,int /*<<< orphan*/ ) ; 

void
FUNC13(struct icl_conn *ic)
{
	struct icl_pdu *pdu;
	struct socket *so;

	FUNC0(ic);

	/*
	 * Wake up the threads, so they can properly terminate.
	 */
	ic->ic_disconnecting = true;
	while (ic->ic_receive_running || ic->ic_send_running) {
		FUNC8(&ic->ic_receive_cv);
		FUNC8(&ic->ic_send_cv);
		FUNC9(&ic->ic_send_cv, ic->ic_lock);
	}

	/* Some other thread could close the connection same time. */
	so = ic->ic_socket;
	if (so == NULL) {
		FUNC1(ic);
		return;
	}
	ic->ic_socket = NULL;

	/*
	 * Deregister socket upcalls.
	 */
	FUNC1(ic);
	FUNC3(&so->so_snd);
	if (so->so_snd.sb_upcall != NULL)
		FUNC12(so, SO_SND);
	FUNC4(&so->so_snd);
	FUNC3(&so->so_rcv);
	if (so->so_rcv.sb_upcall != NULL)
		FUNC12(so, SO_RCV);
	FUNC4(&so->so_rcv);
	FUNC11(so);
	FUNC0(ic);

	if (ic->ic_receive_pdu != NULL) {
		//ICL_DEBUG("freeing partially received PDU");
		FUNC10(ic, ic->ic_receive_pdu);
		ic->ic_receive_pdu = NULL;
	}

	/*
	 * Remove any outstanding PDUs from the send queue.
	 */
	while (!FUNC5(&ic->ic_to_send)) {
		pdu = FUNC6(&ic->ic_to_send);
		FUNC7(&ic->ic_to_send, ip_next);
		FUNC10(ic, pdu);
	}

	FUNC2(FUNC5(&ic->ic_to_send),
	    ("destroying session with non-empty send queue"));
	FUNC1(ic);
}