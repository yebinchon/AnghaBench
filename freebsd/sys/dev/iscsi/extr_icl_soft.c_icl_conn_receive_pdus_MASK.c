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
struct socket {scalar_t__ so_error; } ;
struct icl_pdu {scalar_t__ ip_ahs_len; TYPE_1__* ip_bhs; } ;
struct icl_conn {size_t ic_receive_len; int /*<<< orphan*/  (* ic_receive ) (struct icl_pdu*) ;scalar_t__ ic_disconnecting; struct socket* ic_socket; } ;
struct TYPE_2__ {int /*<<< orphan*/  bhs_opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct icl_conn*) ; 
 struct icl_pdu* FUNC4 (struct icl_conn*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (struct icl_conn*,struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC6 (struct icl_pdu*) ; 

__attribute__((used)) static void
FUNC7(struct icl_conn *ic, size_t available)
{
	struct icl_pdu *response;
	struct socket *so;

	so = ic->ic_socket;

	/*
	 * This can never happen; we're careful to only mess with ic->ic_socket
	 * pointer when the send/receive threads are not running.
	 */
	FUNC2(so != NULL, ("NULL socket"));

	for (;;) {
		if (ic->ic_disconnecting)
			return;

		if (so->so_error != 0) {
			FUNC0("connection error %d; "
			    "dropping connection", so->so_error);
			FUNC3(ic);
			return;
		}

		/*
		 * Loop until we have a complete PDU or there is not enough
		 * data in the socket buffer.
		 */
		if (available < ic->ic_receive_len) {
#if 0
			ICL_DEBUG("not enough data; have %zd, "
			    "need %zd", available,
			    ic->ic_receive_len);
#endif
			return;
		}

		response = FUNC4(ic, &available);
		if (response == NULL)
			continue;

		if (response->ip_ahs_len > 0) {
			FUNC1("received PDU with unsupported "
			    "AHS; opcode 0x%x; dropping connection",
			    response->ip_bhs->bhs_opcode);
			FUNC5(ic, response);
			FUNC3(ic);
			return;
		}

		(ic->ic_receive)(response);
	}
}