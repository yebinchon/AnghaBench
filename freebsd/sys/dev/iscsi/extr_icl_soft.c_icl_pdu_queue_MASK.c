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
struct icl_pdu {struct icl_conn* ip_conn; } ;
struct icl_conn {int /*<<< orphan*/  ic_send_cv; int /*<<< orphan*/  ic_to_send; int /*<<< orphan*/ * ic_socket; scalar_t__ ic_disconnecting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct icl_conn*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct icl_pdu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct icl_conn*,struct icl_pdu*) ; 
 int /*<<< orphan*/  ip_next ; 

__attribute__((used)) static void
FUNC6(struct icl_pdu *ip)
{
	struct icl_conn *ic;

	ic = ip->ip_conn;

	FUNC0(ic);

	if (ic->ic_disconnecting || ic->ic_socket == NULL) {
		FUNC1("icl_pdu_queue on closed connection");
		FUNC5(ic, ip);
		return;
	}

	if (!FUNC2(&ic->ic_to_send)) {
		FUNC3(&ic->ic_to_send, ip, ip_next);
		/*
		 * If the queue is not empty, someone else had already
		 * signaled the send thread; no need to do that again,
		 * just return.
		 */
		return;
	}

	FUNC3(&ic->ic_to_send, ip, ip_next);
	FUNC4(&ic->ic_send_cv);
}